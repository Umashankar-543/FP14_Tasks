function area(){
    var pi=3.14, Area, radius;
    radius=eval(document.getElementById('radius').value);
    Area=pi*radius*radius;
    alert("Area of the Circle is "+Area)
}

function cleardata(){
    document.getElementById('radius').value=""
}