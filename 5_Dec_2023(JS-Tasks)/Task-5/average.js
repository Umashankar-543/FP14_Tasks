function average(){
    var num1, num2, num3;
    num1=eval(document.getElementById('num1').value);
    num2=eval(document.getElementById('num2').value);
    num3=eval(document.getElementById('num3').value);
    var Average=(num1+num2+num3)/3;
    alert('Average of '+num1+', '+num2+' and '+num3+' = '+Average)
}

function cleardata(){
    document.getElementById('num1').value=""
    document.getElementById('num2').value=""
    document.getElementById('num3').value=""
}