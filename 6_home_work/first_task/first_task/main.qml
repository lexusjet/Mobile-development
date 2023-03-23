import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2

Window {
    id: wind
    visible: true
    width: 640
    height: 480
    title: qsTr("hi")

    function getPockemons(number){
        for(var i = 0; i < number; i++){
            getData(i)
        }
    }


    function getData(index) {
//    listview.model.clear()
        var xmlhttp = new XMLHttpRequest();
        console.log(index)
        var url = "https://pokeapi.co/api/v2/pokemon/1" + index;
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == XMLHttpRequest.DONE && xmlhttp.status == 200) {
                print(xmlhttp.responseText)
                parsePockemon(xmlhttp.responseText);
            }
        }
            xmlhttp.open("GET", url, true);
            xmlhttp.send();
    }
    // Парсинг JSON ответа от сервера и запись значений в ListView
    function parsePockemon(response) {
        var jsonObj = JSON.parse(response)
        var jsonStaff = jsonObj.abilities
        var ability = jsonObj.abilities[0].ability.name
        var name  = jsonObj.name
        var stats = jsonObj.stats
        listview.model.append({pockemonName: name, abilitiys: ability,
                                  hp: stats[0].base_stat,
                                  attack: stats[1].base_stat,
                                  defense: stats[2].base_stat,
                                  special_attack: stats[3].base_stat,
                                  special_defense: stats[4].base_stat,
                                  speed: stats[5].base_stat
                              })
//        for(var i = 0; i < jsonStaff.length; i++) {
//            listview.model.append( {pockemonName: jsonObj})
//        }
    }


    Item {
        anchors.fill: parent
        ListModel {
            id: model
        }
        ListView {
            id: listview
            anchors.fill: parent
            model: model
            header: Rectangle {
                height: 35
                width: parent.width
                color: "dark green"
                Text {
                    anchors.centerIn: parent
                    text: "Данные от сервера"
                    color: "white"
                }
            }
            delegate: Rectangle{
                width: parent.width
                height: 60
                RowLayout{
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.leftMargin: 6
                    ColumnLayout{
                        Text {
                            text: pockemonName
                            font.bold: true
                            font.pixelSize: 15
                        }
                        RowLayout{
                            Label{
                                text:  "ability:"
                                font.bold: true
                                font.pixelSize: 12
                            }
                            Text { text: abilitiys}
                        }
                    }
                    ColumnLayout{
                        spacing: 1
                        RowLayout{
                            Label{ text: "hp:" }
                            Text { text: hp}
                        }
                        RowLayout{
                            Label{ text: "attack:"}
                            Text{ text: attack}
                        }
                        RowLayout{
                            Label{ text: "defense:"}
                            Text{ text: defense}
                        }

                    }
                    ColumnLayout{
                        spacing: 1
                        RowLayout{
                            Label{ text: "special_attack:"}
                            Text{ text: special_attack}
                        }

                        RowLayout{
                            Label{text: "special_defense:"}
                            Text{text: special_defense}
                        }
                        RowLayout{
                            Label{ text: "speed:"}
                            Text{text: speed}
                        }
                    }

            }
        }
        Button {
            anchors.bottom: parent.bottom
            width: parent.width
            text: "Подтянуть данные"
            onClicked: getPockemons(5)
        }

        MessageDialog {
            id: messageDialog
        }
    }
}
}

