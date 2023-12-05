function interest(){
    var Principal, Time, Rate;
    Principal=eval(document.getElementById('Principal').value);
    Time=eval(document.getElementById('Time').value);
    Rate=eval(document.getElementById('Rate').value);
    var si=(Principal*Time*Rate)/100;
    alert('Simple Interest is '+si)
}

function cleardata(){
    document.getElementById('Principal').value=""
    document.getElementById('Time').value=""
    document.getElementById('Rate').value=""
}