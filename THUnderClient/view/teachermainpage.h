#ifndef TEACHERMAINPAGE_H
#define TEACHERMAINPAGE_H

#include <QWidget>
#include <QAudioInput>
#include <QAudioOutput>
#include <QByteArray>
#include "../controller/teacherop.h"

namespace Ui {
class TeacherMainPage;
}

class TeacherMainPage : public QWidget
{
    Q_OBJECT

public:
    explicit TeacherMainPage(QWidget *parent = nullptr,
                             Teacherop* teacherop = nullptr);
    ~TeacherMainPage();



private slots:
    void on_b_togglestate_clicked();
    void on_cb_audiodevice_currentIndexChanged(int index);
    void get_audiodata_sent();

private:
    void init_window();
    void init_rec(const QAudioDeviceInfo&);
    void stop_rec();

    Teacherop* teacherop;
    Ui::TeacherMainPage *ui;
    bool is_class_begin;
    QScopedPointer<QAudioInput> m_audioInput;
    QScopedPointer<QAudioOutput> m_audioOutput;
    QIODevice* m_inputIOdevice;
    QIODevice* m_outputIOdevice;
};

#endif // TEACHERMAINPAGE_H
