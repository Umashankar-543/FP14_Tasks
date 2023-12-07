function average() {
    var num1, num2, num3;
    num1 = document.getElementById('num1').value;
    num2 = document.getElementById('num2').value;
    num3 = document.getElementById('num3').value;
    if (num1 === '' || num2 === '' || num3 === '') {
        alert('Please fill the *Required fields')
        return false
    }
    else {
        var Average = (eval(num1) + eval(num2) + eval(num3)) / 3;
        alert('Average of ' + eval(num1) + ', ' + eval(num2) + ' and ' + eval(num3) + ' = ' + Average)
        return true
    }
}

function cleardata() {
    var result = confirm('Do you want to clear?')
    if (result == true) {
        return true
    }
    else {
        return false
    }
}