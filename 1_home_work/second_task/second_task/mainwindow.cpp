#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPropertyAnimation>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    button = new QPushButton(this);
    button->move(100,100);
    button->setText(tr("Animation"));
//    QPropertyAnimation  anim(button, "geometry");
    connect(button, SIGNAL(clicked()),SLOT(animation()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::animation()
{
    QPropertyAnimation *animation = new QPropertyAnimation(button, "geometry");
    animation->setDuration(10000);
    animation->setStartValue(QRect(0, 0, 100, 30));
    animation->setEndValue(QRect(250, 250, 100, 30));

    animation->start();
}
