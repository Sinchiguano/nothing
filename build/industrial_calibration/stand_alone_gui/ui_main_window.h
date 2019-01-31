/********************************************************************************
** Form generated from reading UI file 'main_window.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_WINDOW_H
#define UI_MAIN_WINDOW_H

#include <QtCore/QLocale>
#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindowDesign
{
public:
    QAction *action_Quit;
    QAction *action_Preferences;
    QAction *actionAbout_Qt;
    QAction *actionAbout;
    QWidget *centralwidget;
    QGroupBox *groupBox;
    QPushButton *obsButton;
    QPushButton *saveButton;
    QPushButton *covButton;
    QPushButton *loadButton;
    QPushButton *startButton;
    QGroupBox *groupBox_2;
    QLineEdit *allowed_residual_;
    QPushButton *runButton;
    QLabel *final_label;
    QLabel *final_resid_lb_;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindowDesign)
    {
        if (MainWindowDesign->objectName().isEmpty())
            MainWindowDesign->setObjectName(QStringLiteral("MainWindowDesign"));
        MainWindowDesign->resize(571, 338);
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowDesign->setWindowIcon(icon);
        MainWindowDesign->setLocale(QLocale(QLocale::English, QLocale::Australia));
        action_Quit = new QAction(MainWindowDesign);
        action_Quit->setObjectName(QStringLiteral("action_Quit"));
        action_Quit->setShortcutContext(Qt::ApplicationShortcut);
        action_Preferences = new QAction(MainWindowDesign);
        action_Preferences->setObjectName(QStringLiteral("action_Preferences"));
        actionAbout_Qt = new QAction(MainWindowDesign);
        actionAbout_Qt->setObjectName(QStringLiteral("actionAbout_Qt"));
        actionAbout = new QAction(MainWindowDesign);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        centralwidget = new QWidget(MainWindowDesign);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        groupBox = new QGroupBox(centralwidget);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        groupBox->setGeometry(QRect(20, 50, 161, 181));
        groupBox->setAutoFillBackground(false);
        obsButton = new QPushButton(groupBox);
        obsButton->setObjectName(QStringLiteral("obsButton"));
        obsButton->setGeometry(QRect(40, 60, 80, 22));
        saveButton = new QPushButton(groupBox);
        saveButton->setObjectName(QStringLiteral("saveButton"));
        saveButton->setGeometry(QRect(40, 90, 80, 22));
        covButton = new QPushButton(groupBox);
        covButton->setObjectName(QStringLiteral("covButton"));
        covButton->setGeometry(QRect(40, 120, 80, 22));
        loadButton = new QPushButton(groupBox);
        loadButton->setObjectName(QStringLiteral("loadButton"));
        loadButton->setGeometry(QRect(40, 150, 80, 22));
        startButton = new QPushButton(groupBox);
        startButton->setObjectName(QStringLiteral("startButton"));
        startButton->setGeometry(QRect(40, 30, 80, 22));
        groupBox_2 = new QGroupBox(centralwidget);
        groupBox_2->setObjectName(QStringLiteral("groupBox_2"));
        groupBox_2->setGeometry(QRect(250, 50, 261, 151));
        allowed_residual_ = new QLineEdit(groupBox_2);
        allowed_residual_->setObjectName(QStringLiteral("allowed_residual_"));
        allowed_residual_->setGeometry(QRect(10, 30, 141, 22));
        runButton = new QPushButton(groupBox_2);
        runButton->setObjectName(QStringLiteral("runButton"));
        runButton->setGeometry(QRect(160, 30, 80, 22));
        final_label = new QLabel(groupBox_2);
        final_label->setObjectName(QStringLiteral("final_label"));
        final_label->setGeometry(QRect(10, 90, 175, 20));
        final_resid_lb_ = new QLabel(groupBox_2);
        final_resid_lb_->setObjectName(QStringLiteral("final_resid_lb_"));
        final_resid_lb_->setGeometry(QRect(190, 90, 59, 20));
        MainWindowDesign->setCentralWidget(centralwidget);
        statusbar = new QStatusBar(MainWindowDesign);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        MainWindowDesign->setStatusBar(statusbar);

        retranslateUi(MainWindowDesign);
        QObject::connect(action_Quit, SIGNAL(triggered()), MainWindowDesign, SLOT(close()));

        QMetaObject::connectSlotsByName(MainWindowDesign);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowDesign)
    {
        MainWindowDesign->setWindowTitle(QApplication::translate("MainWindowDesign", "Robo-Cylinder Intrinsic Calibration", 0));
        action_Quit->setText(QApplication::translate("MainWindowDesign", "&Quit", 0));
        action_Quit->setShortcut(QApplication::translate("MainWindowDesign", "Ctrl+Q", 0));
        action_Preferences->setText(QApplication::translate("MainWindowDesign", "&Preferences", 0));
        actionAbout_Qt->setText(QApplication::translate("MainWindowDesign", "About &Qt", 0));
        actionAbout->setText(QApplication::translate("MainWindowDesign", "&About", 0));
        groupBox->setTitle(QApplication::translate("MainWindowDesign", "Triggers", 0));
        obsButton->setText(QApplication::translate("MainWindowDesign", "Observe", 0));
        saveButton->setText(QApplication::translate("MainWindowDesign", "Save", 0));
        covButton->setText(QApplication::translate("MainWindowDesign", "COV", 0));
        loadButton->setText(QApplication::translate("MainWindowDesign", "LOAD", 0));
        startButton->setText(QApplication::translate("MainWindowDesign", "Start", 0));
        groupBox_2->setTitle(QApplication::translate("MainWindowDesign", "Allowed Cost Per Pixel", 0));
        allowed_residual_->setInputMask(QString());
        allowed_residual_->setText(QApplication::translate("MainWindowDesign", "Allowed Residual", 0));
        runButton->setText(QApplication::translate("MainWindowDesign", "Run", 0));
        final_label->setText(QApplication::translate("MainWindowDesign", "final cost per pixel:", 0));
        final_resid_lb_->setText(QApplication::translate("MainWindowDesign", "_________", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindowDesign: public Ui_MainWindowDesign {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_WINDOW_H
