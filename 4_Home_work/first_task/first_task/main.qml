import QtQuick 2.9
import QtQuick.Window 2.2
import QtCharts 2.2

//Добавьте на стороне C++ класс с описанием метрик графика:
// +цвет,
// +название параметра,
// +enum с типом графика,
// +вектор значений по x, возрастающий от 0 до 5 с шагом 0.1,
// +вектор значений по y, который будет высчитываться при изменении типа графика

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



    ValueAxis {
        id: axisY
        min: 0
        max: 1
    }

    ValueAxis {
        id: axisX
        min: 0
        max: 1
    }

    Item {
        anchors.fill: parent
        ChartView {
            id: chart
            title: "Top-5 car brand shares in Finland"
            anchors.fill: parent
            legend.alignment: Qt.AlignBottom
            antialiasing: true
            LineSeries  {
                id: series
                color: Graph.color
                name: Graph.name
                axisX: axisX
                axisY: axisY
                Component.onCompleted: {
                    axisX.min = Graph.getX(0)
                    axisX.max = Graph.getX(Graph.count()-1)
                    for(var i = 0; i < Graph.count(); i++) {
                        if(axisY.max < Graph.getY(i))
                            axisY.max = Graph.getY(i)
                        else if(axisY.min > Graph.getY(i))
                            axisY.min = Graph.getY(i)
                        series.append(Graph.getX(i), Graph.getY(i));
                    }
                }

            }
        }
    }
}
