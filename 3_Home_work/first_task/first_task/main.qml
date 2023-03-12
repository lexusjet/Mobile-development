import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12



//  + пользователь не вошел в приложение,
//  + пользователь авторизовался,
//  пользователь запустил поиск (здесь поставьте busy indicator на 2-3 секунды),
//  поиск завершен.
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Log in")
    color: "#F7F7F7"




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
                },
            State{
                name: "search"
                PropertyChanges{target: rectangle; opacity: 0}
                PropertyChanges{target: indicator1; running: true}
            },
            State{
                name: "searchSucsess"
                PropertyChanges{target: rectangle; opacity: 0}
                PropertyChanges{target: searchend; opacity: 100}
                PropertyChanges{target: searchend; visible: true}
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
            },
            Transition{
                from: "sucsess"
                to: "search"
                PropertyAnimation{ target: indicator1; property: "running"; duration: 600}
            },
            Transition{
                from: "search"
                to: "searchSucsess"
                PropertyAnimation{target: searchend; property: "opacity"; duration: 6000; alwaysRunToEnd: true}
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
                Timer{
                    id: time; interval: 5000; running: false
                    onTriggered: rectangle.state = "searchSucsess"
                }
                onClicked: {
                    if(nameField.text == "Name" && passField.text == "pass"){
                        rectangle.state = (nameField.state == "sucsess")? "": "sucsess"
                        rectangle.state = "search"
                        time.start()

                    }
                    else{
                        rectangle.state = (nameField.state == "inocrect")? "": "inocrect"
                        console.log(nameField.state.toString())
                    }
                }
            }
        }


    }
    BusyIndicator{ id: indicator1; anchors.centerIn: parent; running: false; }
    Rectangle{
        id: searchend
        width: 300
        height: 180
        border.width: 1
        border.color: "#00FF7F"
        anchors.centerIn: parent
        visible: false
        opacity: 0
        radius: 6
        color: "#FFFFFF"
        Text {
            id: namea
            anchors.centerIn: parent
            text: qsTr("Sucsess")
        }
    }
}

