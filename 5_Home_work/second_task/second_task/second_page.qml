import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    id: item
    anchors.centerIn: parent
    signal privusPage()
    Rectangle{
        id: rectengle
        width: 250
        height: 400
        anchors.centerIn: parent
        color: "blue"

        Rectangle{
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
            width: 100
            height: 50
            color: "white"
            Label{
                id: screanName
                anchors.centerIn: parent
                text:  "Second page"
                font.bold: true
                font.pixelSize: 15
            }
        }


        Button{
            width: parent.width
            height: 50
            text: "privus page"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            onClicked: item.privusPage()
        }


     }

}
