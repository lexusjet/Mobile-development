import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {

    property int pixelSize : 14
    property int genderSate : 0
    property var arg: []
    property int genderPrefeares: 0
    property string gen: ""

    ColumnLayout {
        id: colmn

        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
        spacing: 2

        Label{
            Layout.alignment: Qt.AlignCenter
            text: "Youre profile"
            font.pixelSize: 17
            font.bold: true
            color: "white"
        }

        ColumnLayout{
            id: nameBlock
            Layout.alignment: Qt.AlignCenter
            spacing: 1
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Name"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            TextField{
                id: name
                placeholderText: "youre name"
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: 200
                Layout.preferredHeight: 25
                background: Rectangle{ radius: 5}
            }
        }

        ColumnLayout{
            id: ageBlock
            Layout.alignment: Qt.AlignCenter
            spacing: 1

            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Age"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            TextField{
                id: age
                placeholderText: "age"
                Layout.preferredWidth: 100
                Layout.preferredHeight: 25
                Layout.alignment: Qt.AlignCenter
                background: Rectangle{ radius: 5}

            }
        }

        ColumnLayout{
            id: genderBlock
            Layout.alignment: Qt.AlignCenter
            spacing: 1
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Gender"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            RowLayout{
                id: gender

                Layout.alignment: Qt.AlignCenter
                RadioButton{
                    id: genderMale
                    text: "Male"
                    onClicked: {
                        genderSate = 1
                    }
                }
                RadioButton{
                    id: genderFemale
                    text: "Female"
                    onClicked: {
                        genderSate = 0
                    }
                }
            }
        }

        ColumnLayout{
            id: town_education_hobby_block
            Layout.alignment: Qt.AlignCenter
            spacing: 1
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Town"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            TextField{
                id: town
                Layout.preferredWidth: 200
                Layout.preferredHeight: 25
                Layout.alignment: Qt.AlignCenter
                placeholderText: "youre town"
                background: Rectangle{ radius: 5}
            }

            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Education"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            ComboBox{
                id: education
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: 200
                Layout.preferredHeight: 25
                model:["Secondary education", "Vocational education", "Higher education", "PHD"]
            }

            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Hobby"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            TextField{
                id: hobby
                Layout.preferredWidth: 200
                Layout.preferredHeight: 25
                Layout.alignment: Qt.AlignCenter
                placeholderText: "youre hobby"
                background: Rectangle{ radius: 5}
            }
        }

        ColumnLayout{
            id: infoBlock
            Layout.alignment: Qt.AlignCenter
            spacing: 1
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Inforamation"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }

            TextField{
                id: info
                Layout.alignment: Qt.AlignCenter
                placeholderText: "somthing abaut you"
                background: Rectangle{ radius: 5}
            }
        }

        ColumnLayout{
            id: agePrefaresBlock
            Layout.alignment: Qt.AlignCenter
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "age prefares"
            }
            RowLayout{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: 100
                TextField{
                    id: ageMin
                    Layout.preferredWidth: 50
                    placeholderText: "min"
                    background: Rectangle{ radius: 5}
                }
                TextField{
                    id: ageMax
                    Layout.preferredWidth: 50
                    placeholderText: "max"
                    background: Rectangle{ radius: 5}
                }
            }
        }

        ColumnLayout{
            id: genderPrefaresBlock
            Layout.alignment: Qt.AlignCenter
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Gender"
            }

            CheckBox{
                id: maleCheck
                Layout.alignment: Qt.AlignCenter
                text: "male"
                onClicked: {
                    if(checked && femaleCheck.checked) gen = "Male Female"
                    else if(checked ) gen = "Male"
                    else if(femaleCheck.checked) gen = "Female"
                    else gen = ""
                }
            }
            CheckBox{
                id: femaleCheck
                Layout.alignment: Qt.AlignCenter
                text: "female"
                onClicked: {
                    if(checked && femaleCheck.checked) gen = "Male Female"
                    else if(checked ) gen = "Female"
                    else if(maleCheck.checked) gen = "Male"
                    else gen = ""
                }
            }
        }

        ColumnLayout{
            id: educationPrefereBlock
            Layout.alignment: Qt.AlignCenter
            Label{
                Layout.alignment: Qt.AlignCenter
                text: "Education"
                font.pixelSize: pixelSize
                font.bold: true
                color: "white"
            }
            ComboBox{
                id: educationPrefere
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: 200
                Layout.preferredHeight: 25
                model:["Secondary education", "Vocational education", "Higher education", "PHD"]
            }
        }

//        Button{
//            id: enter
//            text: "Enter"

//            palette {
//                button: "#5B85B3"
//                buttonText: "white"
//            }
//            Layout.alignment: Qt.AlignCenter
//            onClicked: {
//                arg.push(name.text)
//                arg. push(age.text)
//                arg.push(String(genderSate == 0 ? "Female": "Male"))
//                arg.push(town.text)
//                arg.push(hobby.text)
//                arg.push(education.currentText)

//                arg.push(info.text)
//                arg.push(ageMin.text)
//                arg.push(ageMax.text)
//                arg.push(gen)
//                arg.push(educationPrefere.currentText)
//                AppCore.print(arg)

//            }
//        }
    }


}
