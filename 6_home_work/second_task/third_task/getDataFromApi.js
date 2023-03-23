
function getData(request) {

    var xmlhttp = new XMLHttpRequest();
    var url = "https://api.apilayer.com/fixer/"+ request;
    var anser = {result: ""}
    xmlhttp.onreadystatechange = function(){
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            print("work")
            anser.result =  parseAnser(xmlhttp.responseText)
        }
    }
    xmlhttp.open("GET", url, false);
    xmlhttp.setRequestHeader("apikey","Xk3Ic3TEYDSbrGO0Oeq6GrB99xlTftyZ")
    xmlhttp.send();
    return anser
}

function parseAnser(response) {
    var jsonObj = JSON.parse(response)
    var anser = jsonObj.result
    return anser
}

