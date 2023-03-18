//Сделайте в JS-файле функцию, возвращающую координаты точек для отрисовки нескольких
//фигур — звёздочка,
//  кольцо,
//  домик,
//  песочные часы,
//  используйте их в Canvas.Выбор типа фигуры сделайте из выпадающего списка


function star(x0, y0, r){
    var anser  = []
//    var points=[1, 3, 5, 2, 4, 1]
    var points = [1+2.5, 3+2.5, 5+2.5, 2+2.5, 4+2.5, 1+2.5]
    for(var i = 0; i < points.length; i++){
        var x1= x0 + r * Math.sin(72/180*Math.PI*points[i])
        var y1= y0 + r * Math.cos(72/180*Math.PI*points[i])
        anser.push({x: x1, y: y1})
    }
    return anser
}

function ring(x0, y0, r){
    var anser  = []
    var parts = 36
    var step  = 360/36
    for(var i = 0; i  < 36; i++){
        var x1 = x0 + r * Math.sin(step/180 * Math.PI * i)
        var y1 = y0 + r * Math.cos(step/180 * Math.PI * i)
        anser.push({x: x1, y: y1})
    }
    return anser



}
function house(x0, y0, r){
    var anser = []
    var points = [5,7,1,3,4,5]
    for(var i = 0; i  < points.length; i++){
        var x1 = x0 + r * Math.sin(45/180 * Math.PI * points[i])
        var y1 = y0 + r * Math.cos(45/180 * Math.PI * points[i])
        anser.push({x: x1, y: y1})
    }
    return anser
}
function sand_watch(x0, y0, r){
    var anser = []
    var points = [3,7,1,5,3]
    for(var i = 0; i  < points.length; i++){
        var x1 = x0 + r * Math.sin(45/180 * Math.PI * points[i])
        var y1 = y0 + r * Math.cos(45/180 * Math.PI * points[i])
        anser.push({x: x1, y: y1})
    }
    return anser

}

