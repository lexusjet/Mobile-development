import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Item {

//    width: parent.width
//    height: parent.height/2


    ColumnLayout{
        id: colmn
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 5
        spacing: 2
        Label{
            Layout.alignment: Qt.AlignCenter
            text: "Login"
            font.pixelSize: 17
            font.bold: true
            color: "white"
        }
        TextField{
            id: username
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: 150
            background: Rectangle{ radius: 5}
        }
        Label{
            Layout.alignment: Qt.AlignCenter
            text: "Password"
            font.pixelSize: 17
            font.bold: true
            color: "white"
            }
        TextField{
            id: password
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: 150
            background: Rectangle{ radius: 5}
        }
        Button{
            Layout.alignment: Qt.AlignCenter
            text: "Sign in"
            palette {
                button: "#5B85B3"
                buttonText: "white"
            }

        }
    }
}
