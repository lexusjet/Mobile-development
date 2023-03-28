import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.LocalStorage 2.12
import Qt.labs.qmlmodels 1.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import "DBFunctions.js" as DbFunctions


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("DB Example")
    property int cellHorizontalSpacing: 10
    property string tableName: "contacts1"



    ComboBox{
        id: chooseContacts
        currentIndex:0
        anchors.top: parent.top
        model: ["contacts1", "contacts2"]
        onCurrentIndexChanged: {
            if(chooseContacts.currentIndex == 0)
                table.model = contact1
            else if(chooseContacts.currentIndex == 1)
                table.model = contact2
            tableName = chooseContacts.textAt(chooseContacts.currentIndex)
        }
    }
    Button{
        id: changeData
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "изменить данные"
        onClicked: {
            loader.source= "pole.qml"

        }
    }

    TableView {
        id: table

        anchors.top: chooseContacts.bottom
        anchors.bottom: changeData.bottom
        columnSpacing: 1
        rowSpacing: 1
        model: contact1

        delegate: Rectangle {

            implicitWidth: Math.max(100, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
            implicitHeight: 50
            border.width: 1
            RowLayout{
                spacing:0
                Rectangle {
                    implicitWidth: Math.max(100, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
                    implicitHeight: 50
                    border.width: 1
                    Text {
                        id: innerText
                        text: number
                        anchors.centerIn: parent
                    }
                }
                Rectangle {
                    implicitWidth: Math.max(100, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
                    implicitHeight: 50
                    border.width: 1
                    Text {
                        text: first_name
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    implicitWidth: Math.max(100, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
                    implicitHeight: 50
                    border.width: 1
                    Text {
                        text: last_name
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    implicitWidth: Math.max(150, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
                    implicitHeight: 50
                    border.width: 1
                    Text {
                        text: email
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    implicitWidth: Math.max(150, /*left*/ cellHorizontalSpacing + innerText.width + /*right*/ cellHorizontalSpacing)
                    implicitHeight: 50
                    border.width: 1
                    Text {
                        text: phone
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
    ListModel{
        id: contact1

        ListElement {
            number: "id"
            first_name: "first_name"
            last_name: "last_name"
            email: "email"
            phone: "phone"
        }
        Component.onCompleted: {
            var db = LocalStorage.openDatabaseSync("DBExample", "1.0", "Пример локальной базы данных", 1000)
            db.transaction(function(tx){DbFunctions.readContacts(tx, contact1, "contacts1")})
        }
    }

    ListModel {
        id: contact2
        ListElement {
            number: "id"
            first_name: "first_name"
            last_name: "last_name"
            email: "email"
            phone: "phone"

        }
        Component.onCompleted: {
            var db = LocalStorage.openDatabaseSync("DBExample", "1.0", "Пример локальной базы данных", 1000)
            db.transaction(function(tx){DbFunctions.readContacts(tx, contact2, "contacts2")})
        }
    }
    Loader{
        anchors.centerIn: parent
        width: 200
        height: 301

        id: loader
    }

    Connections{
        target: loader.item
        onDataChanged: function(a,b,c,d,e){
            var db = LocalStorage.openDatabaseSync("DBExample", "1.0", "Пример локальной базы данных", 1000)
            db.transaction(function(tx){DbFunctions.changeContact(tx, table.model, tableName, a,b,c,d,e)})
            loader.source = ""
            console.log("0")

        }
    }

    Component.onCompleted: {
        var db = LocalStorage.openDatabaseSync("DBExample", "1.0", "Пример локальной базы данных", 1000)
       try{
        db.transaction(function(tx){DbFunctions.createSimpleTable(tx, "contact1")})
        db.transaction(function(tx){DbFunctions.createSimpleTable(tx, "contact2")})
        db.transaction(function(tx) {
                           DbFunctions.addContact(tx, "contact1", "Иванов", "Иван", "ivano4viv2182@mail.ru",
                                                  "+7(988)37533112")
                           DbFunctions.addContact(tx, "contact1","Заварнов", "Владимир", "za4vlad@mail.ru",
                                                  "+7(977)98373331")
                           DbFunctions.addContact(tx, "contact1","Говорун", "Максим", "landlo4rd2000@mail.ru",
                                                  "+7(977)3310111")
                       })
        db.transaction(function(tx) {
                           DbFunctions.addContact(tx, "contact2", "Иванов", "Федор", "fedora@6mail.ru",
                                                  "+7(988)17333112")
                           DbFunctions.addContact(tx, "contact2","Шматко", "Петр", "shmat_piter8@mail.ru",
                                                  "+7(977)78373331")
                           DbFunctions.addContact(tx, "contact2","Ничаев", "Александр", "nemch9@mail.ru",
                                                  "+7(977)3211111")
                       })
       }
       catch(err){
           console.log(err)
       }
    }


}
