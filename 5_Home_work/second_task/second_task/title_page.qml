import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Item {
    id: item
    anchors.centerIn: parent
    signal nextPage()
    Rectangle{
        id: rectengle
        width: 250
        height: 400
        anchors.centerIn: parent


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
                text:  "Maint screan"
                font.bold: true
                font.pixelSize: 15
            }
        }

        Button{
            width: parent.width
            height: 50
            text: "next page"
            anchors.horizontalCenter: rectengle.horizontalCenter
            anchors.bottom: rectengle.bottom
            onClicked: item.nextPage()
        }


        }



}
