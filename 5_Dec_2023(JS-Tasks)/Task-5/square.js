function sqaure(){
    var a = eval(document.getElementById('value1').value);
    var b = eval(document.getElementById('value2').value);
    var Result=(a*a)+(b*b)+(2*a*b);
    alert('Value is '+Result)
}

function cleardata(){
    document.getElementById('value1').value=""
    document.getElementById('value2').value=""
}