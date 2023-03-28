import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.12

Item {
    signal dataChanged(string row, string first_name, string last_name, string email, string phone)
    anchors.centerIn: parent
    Rectangle{
        color: "#A9A9A9"
        anchors.centerIn: parent
        width: 200
        height: 300

        ColumnLayout{
            anchors.centerIn: parent

            Label{text: "row"}
            Rectangle{
                width: 150
                height:25
                color:"white"
                TextInput{
                    id: row
                    anchors.fill: parent
                    maximumLength: 15
                    color: "#000000"
                }
            }

            Label{ text: "first_name"}
            Rectangle{
                width: 150
                height:25
                color:"white"
                TextInput{
                    id: first_name
                    anchors.fill: parent
                    maximumLength: 15
                    color: "#000000"
                }
            }

            Label{text: "last_name"}
            Rectangle{
                width: 150
                height:25
                color:"white"
                TextInput{
                    id: last_name
                    anchors.fill: parent
                    maximumLength: 15
                    color: "#000000"
                }
            }

            Label{text: "email"}
            Rectangle{
                width: 150
                height:25
                color:"white"
                TextInput{
                    id: email
                    anchors.fill: parent
                    maximumLength: 15
                    color: "#000000"
                }
            }

            Label{text: "phone"}
            Rectangle{
                width: 150
                height:25
                color:"white"
                TextInput{
                    id: phone
                    anchors.fill: parent
                    maximumLength: 15
                    color: "#000000"
                }
            }
            Button{
                text: "тыкни"
                onClicked: dataChanged(row.text, first_name.text, last_name.text, email.text, phone.text)
            }
        }
    }


}

//number: "id"
//first_name: "first_name"
//last_name: "last_name"
//email: "email"
//phone: "phone"
