function square(){
    var num1 = document.getElementById('value1').value;
    var num2 = document.getElementById('value2').value;
    if (num1 === '' || num2 === '') {
        alert('Please fill the *Required fields')
        return false
    }
    else {
        var a=eval(num1)
        var b=eval(num2)
        var Result=(a*a)+(b*b)+(2*a*b);
        alert('Value is '+Result)
        return true
    }
    
}

function cleardata(){
    var result = confirm('Do you want to clear?')
    if (result == true) {
        return true
    }
    else {
        return false
    }
}