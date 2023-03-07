import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

//2. Напишите программу на QML, которая бы вычисляла площадь треугольника по трём сторонам, используя формулу Герона:
//3. Сделайте версию предыдущей задачи, которая вычисляет площадь по координатам вершин треугольника
//  2.23607 , 5.38516 , 6 → S = 6
//a(2), b(6.32456), c(6) → S = 6
//a(2.23607), b(6.7082), c(5.09902) → S = 4.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Connections{
        target:  func
        onAnserSecondQml:{
            anserSecond.text = String(anserB)
        }
        onAnserFound:{
            anserLabel.text = String (anser)
        }
    }


    Rectangle{
        id: first_task
        width: 500
        height: 80
        color: "light grey"
        radius: 10
        anchors.horizontalCenter: parent.horizontalCenter


        Rectangle{
            id: firstLabel
            width: 100
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.left: first_task.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10

            Label{
                id: aLabel
                text: "Length of A"
                anchors.top: firstLabel.top
                anchors.horizontalCenter: firstLabel.horizontalCenter
            }
            TextField  {
                id: aInput
                placeholderText: qsTr("A")
                anchors.top: aLabel.bottom
                anchors.topMargin: 5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left; anchors.right: parent.right
                anchors.leftMargin: 5; anchors.rightMargin: 5
            }
        }

        Rectangle{
            id: secondtLabel
            width: 100
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.left: firstLabel.right
            anchors.leftMargin: 6
            anchors.verticalCenter: parent.verticalCenter

            Label{
                id: bLabel
                text: "Length of B"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
            }
            TextField  {
                id: bInput
                placeholderText: qsTr("B")
                anchors.top: bLabel.bottom
                anchors.topMargin: 5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left; anchors.right: parent.right
                anchors.leftMargin: 5; anchors.rightMargin: 5
            }
        }

        Rectangle{
            id: therdtLabel
            width: 100
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.left: secondtLabel.right
            anchors.leftMargin: 6
            anchors.verticalCenter: parent.verticalCenter
            Label{
                id: cLabel
                text: "Length of C"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
            }
            TextField  {
                id: cInput
                placeholderText: qsTr("C")
                anchors.top: cLabel.bottom
                anchors.topMargin: 5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.left: parent.left; anchors.right: parent.right
                anchors.leftMargin: 5; anchors.rightMargin: 5
            }
        }

        Button{
            id: calculate
            text: "="
            anchors.left: therdtLabel.right
            anchors.leftMargin: 4
            anchors.verticalCenter: therdtLabel.verticalCenter
            contentItem: Text {
                text: calculate.text
                color: "#ffffff"
            }
            background: Rectangle {
                color: "#005291"
                radius: 10

            }
            onClicked: {
                func.culculate(parseFloat(aInput.text), parseFloat(bInput.text), parseFloat(cInput.text))
//                func.culculate(aInput.text, bInput.text, cInput.text)
            }
        }

        Rectangle{
            id: anser
            width: 100
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.left: calculate.right
            anchors.leftMargin: 6
            anchors.verticalCenter: parent.verticalCenter

            Label{
                id: anserTextLabel
                text: "Anser"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Label{
                id: anserLabel
                text: ""
                anchors.centerIn: parent
            }
        }

    }


    Rectangle{
        id: secondTask
        width: 500
        height: 120
        color: "light grey"
        radius: 10
        anchors.top: first_task.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter

        //3. Сделайте версию предыдущей задачи, которая вычисляет площадь по координатам вершин треугольника
        Rectangle{
            id: xrow
            width: 350
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 2

            RowLayout{
                id: xlayout
                spacing: 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: xrow.left
                anchors.leftMargin: 3
                anchors.right: xrow.right
                anchors.rightMargin: 3
                TextField{
                    id: axIput
                    placeholderText: "Ax"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                TextField{
                    id: bxIput
                    placeholderText: "Bx"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                TextField{
                    id: cxIput
                    placeholderText: "Cx"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }

        }
        Rectangle{
            id: yrow
            width: 350
            height: 50
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.top: xrow.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 2

            RowLayout{
                id: ylayout
                spacing: 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: yrow.left
                anchors.leftMargin: 3
                anchors.right: yrow.right
                anchors.rightMargin: 3
                TextField{
                    id: ayIput
                    placeholderText: "Ay"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                TextField{
                    id: byIput
                    placeholderText: "By"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                TextField{
                    id: cyIput
                    placeholderText: "Cy"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }


        }

        Button{
            id: secondCulcualte
            Text {
                anchors.centerIn: parent
                color: "white"

                text:"="
            }
            anchors.left: yrow.right
            anchors.leftMargin: 4
            anchors.verticalCenter: parent.verticalCenter
            width: 25
            height: 50

            background: Rectangle {
                color: "#005291"
                radius: 5

            }
            onClicked: {
                func.culculateSecond(parseFloat(axIput.text), parseFloat(bxIput.text), parseFloat(cxIput.text),
                               parseFloat(ayIput.text), parseFloat(byIput.text), parseFloat(cyIput.text))
            }
        }
        Rectangle{
            id: anserSec
            width: 80
            height: 80
            border.color: "grey"
            border.width: 2
            color: "white"
            radius: 5
            anchors.left:  secondCulcualte.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            Label{
                id: anserSecond
                anchors.centerIn: parent
            }
        }

    }


}


























































