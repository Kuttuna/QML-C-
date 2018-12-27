#include "uicontroller.h"
#include "chrono"
#include "thread"

static std::chrono::milliseconds tracker(100);

UiController::UiController(QObject *parent) : QObject(parent)
{

}

int UiController::increase(int value)
{
    ++value;
    std::this_thread::sleep_for(tracker);
    return value;
}

int UiController::decrease(int value)
{
    --value;
    std::this_thread::sleep_for(tracker);
    return value;
}
