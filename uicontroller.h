#ifndef UICONTROLLER_H
#define UICONTROLLER_H

#include <QObject>

class UiController : public QObject
{
    Q_OBJECT

public:
    explicit UiController(QObject *parent = nullptr);

    Q_INVOKABLE int increase(int value);
    Q_INVOKABLE int decrease(int value);

signals:

public slots:
};

#endif // UICONTROLLER_H
