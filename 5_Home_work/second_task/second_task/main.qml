import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


//  + пользователь не вошел в приложение,
//  + пользователь авторизовался,
//  пользователь запустил поиск (здесь поставьте busy indicator на 2-3 секунды),
//  поиск завершен.
Window {
    id: parentWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Log in")
    color: "#F7F7F7"



    Loader{
        id: loader
//        anchors.fill: parent
        anchors.centerIn: parent
        source: "log_is_screan.qml"

    }
    property var name: 11

    Connections{
        target:loader.item
        onSucsessLogIn: loader.source = "title_page.qml"
        onNextPage: loader.source = "second_page.qml"
        onPrivusPage: loader.source = "title_page.qml"
    }




}


