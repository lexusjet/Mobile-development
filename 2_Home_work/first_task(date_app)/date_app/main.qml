import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12



//пользователь не вошел в приложение,
//пользователь авторизовался,
//пользователь запустил поиск (здесь поставьте busy indicator на 2-3 секунды),
//поиск завершен.

Window {
    visible: true
    width: 570
    height: 700
    title: qsTr("date app")
    color: "#FFE4B4"

    property int  recHeight: 620

    Rectangle{
        id: mainRec
        width: 300
        height: recHeight
        color: "#B5D9FF"
        radius: 6
        anchors.centerIn: parent
        border.width: 3
        border.color: "#FFEDCF"





        LoginScrean{
            id: loginScrean
            width: parent.width
            height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            visible: true
        }


//        RegistrationScreen{
//            id: registrationScreen
//            width: parent.width
//            height:  parent.height - 50
//            visible: true
//            Button{
//                property var arg: []
//                id: registrationButton
//                anchors.top: parent.bottom
//                anchors.topMargin: 5
//                anchors.horizontalCenter: parent.horizontalCenter
//                onClicked: {
//                    arg.push(name.text)
//                    AppCore.print(arg)
//                }
//            }
//        }

    }
}
