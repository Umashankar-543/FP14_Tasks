function cube(){
    var Number=eval(document.getElementById('number').value)
    var Cube=Number*Number*Number;
    alert('Cube of '+Number+' is: '+Cube)
}

function cleardata(){
    document.getElementById('number').value=""
}