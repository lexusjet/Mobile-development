import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

//  Реализуйте пользовательское отображение списка книг из модели.
//  +Пусть модель содержит путь к иконке-обложке книги,
//  +1.название,
//  +2.жанр,
//  +3.автора.
//  +Добавьте разделение книг по жанрам,
//  в заголовке укажите информацию о библиотеке,
//  а в футере добавьте информация о разработчике (о себе).

Window {
    visible: true
    width: 640
    height: 780
    title: qsTr("Hello World")

    Item {
        height: 680
//        width: 330
        anchors.fill: parent

        ListModel{
            id: users
            ListElement {
                group: "Classics"
                name: "To Kill a Mockingbird"
                author: "Charles Dickens"
                genres: "Classics"
                icons: "icons/1.jpg"
            }
            ListElement {
                group: "Comic"
                name: "Watchmen"
                author: "Alan More"
                genres: "Comic"
                icons: "icons/2.jpg"
            }
            ListElement {
                group: "Detective"
                name: "The Night Fire"
                author: "Harry Bosch"
                genres: "Detective"
                icons: "icons/3.jpg"
            }
            ListElement {
                group: "Fantasy"
                name: "The Water Dancer"
                author: "Ta-Nehisi Coates"
                genres: "Fantasy"
                icons: "icons/4.jpg"
            }
            ListElement {
                group: "Horror"
                name: "Carrie"
                author: "Stephen King"
                genres: "Horror"
                icons: "icons/5.jpg"
            }
            ListElement {
                group: "Literary Fiction"
                name: "Where the Crawdads Sing"
                author: "Delia Owens"
                genres: "Literary Fiction"
                icons: "icons/6.jpg"
            }
        }

        ListView {
        id: list
            anchors.fill: parent
            model: users
            spacing: 1

            // Хэдер
            header: Rectangle {
                width: parent.width
                height: 20
                color: "darkblue"
                Text {
                    anchors.centerIn: parent
                    text: "Books"
                    color: "white"
                }
            }
                // Футер
            footer: Rectangle {
                width: parent.width
                height: 20
                color: "darkgreen"
                Text {
                    anchors.centerIn: parent
                    text: "Alexey "
                    color: "white"
                    }
            }

            // Секции по группам пользователей
            section.delegate: Rectangle {
                width: parent.width
                height: 20
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: section
                    color: "darkblue"
                    font.weight: Font.Bold
                }
            }

            section.property: "group"

            // Сами элементы
            delegate: Rectangle {
                width: list.width
                height: 100
                radius: 3
                border.width: 1
                border.color: "darkgray"
                color: "white"
                MouseArea {
                    anchors.fill: parent
                    onDoubleClicked: {
                        list.model.remove(index)
                    }
                }
                Row{

                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        height: 100
                        width: 70
                        source: icons
                    }
                    spacing: 16
                    Column {

                        Row {
                            anchors.horizontalCenter: parent.horizontalCenter
    //                        Text { text: "Name"; font.weight: Font.Bold}
                            Text { text: name; font.weight: Font.Bold}
                            spacing: 20
                        }
                        Row {
                            anchors.horizontalCenter: parent.horizontalCenter
                            spacing: 5
                            Text { text: "Author:"; horizontalAlignment: Qt.AlignLeft}
                            Text { text: author; color: "grey"}
                        }
                        Row {
                            anchors.horizontalCenter: parent.horizontalCenter
                            spacing: 5
                            Text { text: "Genre:"; horizontalAlignment: Qt.AlignLeft}
                            Text { text: genres }
                        }
                    } // Column

                }
            }// Rectangle

            focus: true

            // Анимация появления элементов модели
            populate: Transition {
                NumberAnimation { properties: "x,y"; duration: 1500; easing.type:
                Easing.OutExpo}
            }

            // Анимация добавления элементов
            add: Transition {
                NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration:400 }
                NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 100}
            }

            // Удаление элемента
            remove: Transition {
                PropertyAnimation{ property: "opacity"; to: 0; duration: 1000}
            }

            // Вставка дефолтного пользователя при нажатии на пробел
            Keys.onSpacePressed: model.insert(1, { group: "Пользователь",
            name: "user", messagesCnt: 0,
            registrationDate: "01.01.1970"})
        }// ListView
    }// Item

}
