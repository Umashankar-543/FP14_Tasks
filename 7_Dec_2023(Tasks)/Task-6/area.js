function area(){
    var pi=3.14, Area, radius;
    radius=document.getElementById('radius').value;
    if (radius=='')
    {
        document.getElementById('span1').innerHTML='*Required radius'
        return false
    }
    else
    {
        Area=pi*eval(radius)*eval(radius);
        alert("Area of the Circle is "+Area)
        return true
    }
}

function cleardata(){
    var result=confirm('Do you want to clear?')
    if (result==true)
    {
        return true
    }
    else
    {
        return false
    }
}