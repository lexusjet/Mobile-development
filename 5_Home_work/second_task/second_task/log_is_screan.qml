import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    id: item
    anchors.centerIn: parent
    signal sucsessLogIn()
    Rectangle{
        id: rectangle
        width: 300
        height: 180
        border.width: 1
        border.color: "#3B3B3B"
        anchors.centerIn: parent
        radius: 6
        color: "#C4C4C4"



        states:[
            State {
                name: "inocrect"
                PropertyChanges { target:nameField; color: "red"; text: "abbb"}
                PropertyChanges { target: passField; color: "red"}
            },
            State {
                name: "sucsess"
                PropertyChanges { target: nameField; opacity: 0}
                PropertyChanges{ target: passField; opacity: 0}
                PropertyChanges{ target: bot; opacity: 0}
                PropertyChanges{ target: rectangle; opacity: 0}
                }
        ]
        transitions:[
            Transition {
                to: "inocrect"
                SequentialAnimation{
                    NumberAnimation {target: rectangle; property: "anchors.horizontalCenterOffset"; to: -6; duration: 50 }
                    NumberAnimation {target: rectangle; property: "anchors.horizontalCenterOffset"; to: 6; duration: 100 }
                    NumberAnimation {target: rectangle; property: "anchors.horizontalCenterOffset"; to: 0; duration: 50 }
                }
            },
            Transition {
                to: "sucsess"
                SequentialAnimation{
                    PropertyAnimation { target: rectangle; property: "opacity"; to: 0; duration: 600;  alwaysRunToEnd:  true}
                }
            }

        ]


        ColumnLayout{
            id:columnLayout
            anchors.centerIn: parent
            Label{
                id: nameLabel
                text: "Name"
                font.bold: true
                font.pixelSize: 14
                Layout.alignment: Qt.AlignCenter
            }

            TextField{
                id: nameField
                text:"Name"
                Layout.preferredWidth: 190
                Layout.alignment: Qt.AlignCenter
                background: Rectangle{ radius: 6}
            }
            Label{
                id: passLabel
                text: "Password"
                font.bold: true
                font.pixelSize: 14
                Layout.alignment: Qt.AlignCenter
            }

            TextField{
                id: passField
                text: "pass"
                Layout.preferredWidth: 190
                Layout.alignment: Qt.AlignCenter
                background: Rectangle{ radius: 6}
            }

            Button{
                id:bot
                text: "Enter"
                Layout.preferredWidth: 190
                Layout.preferredHeight: 40
                Layout.alignment: Qt.AlignCenter
                background: Rectangle{radius: 6; color: "#d9dddb"}
                onClicked: {
                    if(nameField.text == "Name" && passField.text == "pass"){
                        rectangle.state = (nameField.state == "sucsess")? "": "sucsess"
                        item.sucsessLogIn()
                    }
                    else{
                        rectangle.state = (nameField.state == "inocrect")? "": "inocrect"
                        console.log(nameField.state.toString())
                    }
                }
            }
        }


    }



}



