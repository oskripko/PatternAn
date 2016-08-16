#include <iostream>
#include <QGuiApplication>
#include <QtQml>
#include <QQmlApplicationEngine>

using namespace std;

int main(int argc, char **argv) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/Resources/qml/MainWindow.qml")));
    return app.exec();
}
/*
 * Необходимые модули:
 * 1) ГУИ для управления программой и вывода результатов в виде графиков и статистики
 * 2) Запись и чтение с файлов
 * 3) Модуль статистики
 * 4) Модуль сегментации
 *
 */