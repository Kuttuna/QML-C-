import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4

Window {
    visible: true
    maximumWidth: 430
    minimumWidth: 430
    maximumHeight: 133
    minimumHeight: 133

    Image {
        id: background
        source: "/image/GünselBmsCheckupUi.png"
        anchors.fill: parent
    }

    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 14.2

        Box {
            id: current

            Box_Text {
                id: current_text
            }
        }

        Box {
            id: voltage

            Box_Text {
                id: voltage_text
            }
        }

        Box {
            id: capacity

            Box_Text {
                id: capacity_text

            }
        }

        Box {
            id: temp1

            Box_Text {
                id: temp1_text
            }
        }

        Box {
            id: temp2

            Box_Text {
                id: temp2_text
            }
        }

        Box {
            id: balance

            Box_Text {
                id: balance_text
            }
        }
    }

    Item {

        property int c1: 0
        property int v: 0
        property int c2: 0
        property int t1: 0
        property int t2: 0
        property double b: 0
        focus: true

        Keys.onPressed:
        {
            switch (event.key) {



            case (Qt.Key_Q):    {
                c1 = controller.increase(c1)
                current_text.text = Number(c1) + " A"
                break   }

            case (Qt.Key_A):    {
                c1 = controller.decrease(c1)
                current_text.text = Number(c1) + " A"
                break   }

            case (Qt.Key_W):    {
                v = controller.increase(v)
                voltage_text.text = Number(v) + " V"
                break   }

            case (Qt.Key_S):    {
                v = controller.decrease(v)
                voltage_text.text = Number(v) + " V"
                break   }

            case (Qt.Key_E):    {
                c2 = controller.increase(c2)
                capacity_text.text = Number(c2) + " Ah"
                break   }

            case (Qt.Key_D):    {
                c2 = controller.decrease(c2)
                capacity_text.text = Number(c2) + " Ah"
                break   }

            case (Qt.Key_R):    {
                t1 = controller.increase(t1)
                temp1_text.text = Number(t1) + " C"
                b= (Math.abs(25 - t1)) + (Math.abs(25 - t2)) / 2
                balance_text.text = Number(b)
                break   }

            case (Qt.Key_F):    {
                t1 = controller.decrease(t1)
                temp1_text.text = Number(t1) + " C"
                b= (Math.abs(25 - t1)) + (Math.abs(25 - t2)) / 2
                balance_text.text = Number(b)
                break   }

            case (Qt.Key_T):    {
                t2 = controller.increase(t2)
                temp2_text.text = Number(t2) + " C"
                b= (Math.abs(25 - t1)) + (Math.abs(25 - t2)) / 2
                balance_text.text = Number(b)
                break   }

            case (Qt.Key_G):    {
                t2 = controller.decrease(t2)
                temp2_text.text = Number(t2) + " C"
                b= (Math.abs(25 - t1)) + (Math.abs(25 - t2)) / 2
                balance_text.text = Number(b)
                break   }

            }
        }
    }
}
