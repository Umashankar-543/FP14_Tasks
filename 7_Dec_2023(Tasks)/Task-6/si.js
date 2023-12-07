function interest(){
    var Principal, Time, Rate;
    Principal=document.getElementById('Principal').value;
    Time=document.getElementById('Time').value;
    Rate=document.getElementById('Rate').value;
    if (Principal === '' || Time === '' || Rate === '') {
        alert('Please fill the *Required fields')
        return false
    }
    else {
        var si=(eval(Principal)*eval(Time)*eval(Rate))/100;
        alert('Simple Interest is '+si)
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