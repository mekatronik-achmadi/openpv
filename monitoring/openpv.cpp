#include "openpv.h"
#include "ui_openpv.h"

openpv::openpv(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::openpv)
{
    ui->setupUi(this);

    serport = new QSerialPort(this);
    tmrData = new QTimer(this);

    QObject::connect(serport,SIGNAL(readyRead()),this,SLOT(routine_readdata()));
    QObject::connect(tmrData,SIGNAL(timeout()),this,SLOT(routine_reqdata()));

    ui->dialVolt->setOrigin(120.0);
    ui->dialVolt->setScaleArc(0.0, 300.0);
    needle = new QwtDialSimpleNeedle(QwtDialSimpleNeedle::Arrow, true, Qt::red,QColor( Qt::gray ).light( 130 ) );
    ui->dialVolt->setNeedle(needle);
}

openpv::~openpv()
{
    delete ui;
}

void openpv::on_btnStart_clicked()
{
    if(ui->btnStart->text()=="Start"){

        QString dev_name="/dev/";
        dev_name += ui->cmbPort->currentText();

        QSerialPort::BaudRate devbaud;
        int baudindex=ui->cmbBaud->currentIndex();
        switch (baudindex) {
            case 0: devbaud=QSerialPort::Baud38400; break;
            case 1: devbaud=QSerialPort::Baud57600; break;
            default: devbaud=QSerialPort::Baud38400; break;
        }

        serport->setPortName(dev_name);

        if(serport->open(QIODevice::ReadWrite)){
            serport->setBaudRate(devbaud,QSerialPort::AllDirections);
            serport->setDataBits(QSerialPort::Data8);
            serport->setStopBits(QSerialPort::OneStop);
            serport->setFlowControl(QSerialPort::NoFlowControl);
            serport->setParity(QSerialPort::NoParity);
        }
        else {
            QMessageBox::critical(this,"Failed","port failed on "+dev_name);
            return;
        }

        if(serport->isOpen()){
            tmrData->start(500);
        }

        ui->btnStart->setText("Stop");
    }
    else if(ui->btnStart->text()=="Stop"){
        if(serport->isOpen()){
            serport->close();
        }

        ui->btnStart->setText("Start");
    }
}

void openpv::routine_reqdata(){
    if(!serport->isOpen()){return;}

    ui->txtRawData->clear();

    QString reqstr="adc\r";
    QByteArray reqbyte=reqstr.toUtf8();
    serport->write(reqbyte);
}

void openpv::routine_readdata(){
    QByteArray rawdata=serport->readAll();
    ui->txtRawData->insertPlainText(rawdata);

    int vADC=ui->txtRawData->toPlainText().toInt();

    float vVolt = (float) vADC * 0.0008;

    ui->txtVolt->setText(QString::number(vVolt));
    ui->dialVolt->setValue(vVolt);
}

void openpv::on_actionQuit_triggered()
{
    if(serport->isOpen()){serport->close();}
    QApplication::quit();
}

void openpv::on_actionAboutQt_triggered()
{
    QApplication::aboutQt();
}
