import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 700
    height: 400
    title: qsTr("Hello World")
    property int curIndexWitouthZero: 0

    function getFriendsText(friends) {
        var resString = ""
        for(var i = 0; i < friends.length; i++){
            resString += friends[i] + ", "
        }
        var buf = resString.slice(0, -2);
        console.log(buf)
        return buf
    }
    ListView {
        anchors.fill: parent
        model: mdl
        spacing: 2
        delegate: Row {
            width: parent.width
            height: 50
            spacing: 2
            //property alias friends: friends
            Rectangle {
                width: 70
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: rowId
                }
            }
            Rectangle {
                width: 100
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: name
                }
            }
            Rectangle {
                width: 100
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: surname
                }
            }
            Rectangle {
                width: 150
                height: parent.height
                border.width: 1
                SwipeView{
                    id: view
                    currentIndex: indicator.currentIndex
                    anchors.fill: parent
                    Component.onCompleted: {
                        console.log("start")
                        var arr = getFriendsText(friends).split(",")
                        var isVisible = true
                        for(var i = 0; i < arr.length; i++){
                            if(i > 0){
                                isVisible = false
                            }
                            view.addItem(friendComponent.createObject(view, {text: arr[i],visible: isVisible}))
                        }
                    }



                }
                PageIndicator {
                    id: indicator

                    count: view.count

                    currentIndex: view.currentIndex
                    interactive: true
                    anchors.bottom: view.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    onCurrentIndexChanged:{
                        view.currentItem.visible = false
                        view.itemAt(indicator.currentIndex).visible = true
                    }

                }
            }
        }//delegate


        header: Row {
            width: parent.width
            height: 50
            spacing: 2
            Rectangle {
                width: 70
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: "rowId"
                }
            }
            Rectangle {
                width: 100
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: "name"
                }
            }
            Rectangle {
                width: 100
                height: parent.height
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: "surname"
                }
            }
            Rectangle {
                width: 150
                height: parent.height
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: "friends"
                }
            }
        }
    }

    Component{
        id: friendComponent
        Text {
            text: qsTr("boba")
            visible: false
        }
    }

}



