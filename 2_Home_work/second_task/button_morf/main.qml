import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2


//Сделайте приложение с квадратом внутри окна, который при однократном клике будет менять цвет на случайный,
// а при двойном клике — превращаться в круг.
//3. Добавьте в предыдущую задачу анимацию вращения квадрата на 360 градусов при клике правой кнопкой мыши.
Window {

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle{
        id: rec
        anchors.centerIn: parent
        width: 100
        height: 100
        radius: 0
        color: "red"


        RotationAnimation{
            id: rotation
            target: rec
            from: 0
            to: 180
            duration: 1000; direction: RotationAnimation.Counterclockwise
        }


        PropertyAction{
            id: changeColor
            target: rec
            property: "color"
        }

        PropertyAction{
            id: form
            target: rec
            property: "radius"
            value: (rec.radius == 0) ? 60: 0
        }


        MouseArea{
            id: mousearea
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            anchors.fill: rec
            onClicked: {
                if(mouse.button == Qt.RightButton){
                    rotation.start()
                }
                else if(mouse.button == Qt.LeftButton){
                    changeColor.value = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                    changeColor.start()
                }
            }

            onDoubleClicked:  form.start()
        }


    }


//    Button{
//        id: bot

//        text: "bob"
//        width: 100
//        height: 100
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter


//        background: Rectangle{
//            id:test
//            radius: 0
//            color: "red"

//        }
//        onClicked: PropertyAction {
//            id: cvet
//            target: test
//            property: "color"
//            value:  Qt.rgba(Math.random(),Math.random(),Math.random(),1);
//        }

//        onDoubleClicked: PropertyAction{
//            id: form
//            target: test
//            property: "radius"
//            value: (test.radius == 0) ? 60: 0
//        }

//    }


}

