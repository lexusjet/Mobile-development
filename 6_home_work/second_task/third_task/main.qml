import QtQuick 2.12
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.12

import "getDataFromApi.js" as GetData


Window {
    id: wind
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property alias test:  valueCurency.text

    signal inputChanged(string a, string b, string c  )

    Connections{
        target:wind
        onInputChanged: conversetion(a,b,c)
    }

    RowLayout{
        anchors.centerIn: parent

        ColumnLayout{
            ComboBox{
                id: firstCurrency
                width: 200
                model: [ "RUB", "USD", "EUR" ]
                onCurrentIndexChanged:inputChanged(value.text,
                                                   firstCurrency.textAt(firstCurrency.currentIndex),
                                                   secondCurency.textAt(secondCurency.currentIndex)
                                                   )

            }
            Rectangle{
                width: firstCurrency.width
                height: firstCurrency.height
                border.width: 1
                border.color: "black"
                TextInput{
                    id: value
                    anchors.centerIn: parent
                    x: 8; y: 8
                    width: 96; height: 20
                    focus: true
                    maximumLength: 15
                    text: "1"
                    validator: RegExpValidator {
                        regExp: /[0-9]+/
                    }
                    onEditingFinished: inputChanged(value.text,
                                                    firstCurrency.textAt(firstCurrency.currentIndex),
                                                    secondCurency.textAt(secondCurency.currentIndex)
                                                    )
                }
            }
        }
        ColumnLayout{
            ComboBox{
                id: secondCurency
                width: 200
                currentIndex: 1
                model: [ "RUB", "USD", "EUR" ]
                onCurrentIndexChanged: inputChanged(value.text,
                                                    firstCurrency.textAt(firstCurrency.currentIndex),
                                                    secondCurency.textAt(secondCurency.currentIndex)
                                                    )
            }
            Rectangle{
                width: 140
                height: secondCurency.height
                border.width: 1
                border.color: "black"
                Label{
                    id: valueCurency
                    anchors.centerIn: parent
                    x: 8; y: 8
                    width: 96; height: 20
                    focus: true
                }
            }
        }
    }

    function conversetion(amaunt, curencyFrom, curencyInto){
        if(amaunt == "" || amaunt == "0"){
            return
        }
        var requestData = "convert?to=%1&from=%2&amount=%3"
        requestData = requestData.arg(curencyInto)
        requestData = requestData.arg(curencyFrom)
        requestData = requestData.arg(amaunt)
        valueCurency.text = GetData.getData(requestData).result
    }


}


