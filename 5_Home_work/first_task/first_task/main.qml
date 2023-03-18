import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12
import "function.js" as Functions
//  Сделайте в JS-файле функцию, возвращающую координаты точек для отрисовки нескольких
//  фигур — звёздочка, кольцо, домик, песочные часы, и используйте их в Canvas. Выбор типа
//  фигуры сделайте из выпадающего списка.

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property var xCenter:  canvas.width/2
    property var yCenter:  canvas.height/2
    property var values: Functions.star(xCenter, yCenter, 100)
    property var functions: [Functions.house, Functions.ring, Functions.house, Functions.sand_watch ]

    Connections{
        target: variants

        onCurrentIndexChanged:{
            const a = functions[variants.currentIndex]
            console.log(a)
            values = a(xCenter, yCenter, 100)
            canvas.requestPaint()
        }
    }
    ComboBox{
        id: variants
        anchors.top: a.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: 100
        height: 50

        model: ListModel {
            id: figures
            ListElement{ text: "Star"}
            ListElement{ text: "Ring"}
            ListElement{ text: "House"}
            ListElement{ text: "Sand Wanth"}
        }
    }
    Rectangle{
        id: a
        width: parent.width
        height: parent.height - 100
        anchors.centerIn: parent.contentItem
        Canvas{
            id: canvas
            anchors.fill: parent
            property int xStep: width / 6
            property int yStep: height / 5

            onPaint: {

                var ctx = getContext("2d");
                ctx.clearRect(0, 0, width, height);
                ctx.fillStyle = Qt.rgba(1, 0, 0, 1); // Красный
                ctx.beginPath()

                ctx.moveTo(values[0].x , values[0].y);
                for(var i = 1; i < values.length; i++){
                    ctx.lineTo(values[i].x, values[i].y);
                }
                ctx.closePath()
                ctx.lineWidth = 15;
                ctx.stroke();
                ctx.fill()
            }

        }
    }

}
