#ifndef OPENPV_H
#define OPENPV_H

#include <QMainWindow>
#include <QSerialPort>
#include <QMessageBox>
#include <QTimer>
#include <qwt/qwt_dial.h>
#include <qwt/qwt_dial_needle.h>

namespace Ui {
class openpv;
}

class openpv : public QMainWindow
{
    Q_OBJECT

public:
    explicit openpv(QWidget *parent = 0);
    ~openpv();

private slots:
    void on_btnStart_clicked();

    void routine_reqdata();

    void routine_readdata();

    void on_actionQuit_triggered();

    void on_actionAboutQt_triggered();

private:
    Ui::openpv *ui;
    QSerialPort *serport;
    QTimer *tmrData;
    QwtDialSimpleNeedle *needle;
};

#endif // OPENPV_H
