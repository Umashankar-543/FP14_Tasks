function cube(){
    var Number=document.getElementById('number').value
    if (Number=='')
    {
        document.getElementById('span1').innerHTML='*Required'
        return false
    }
    else
    {
        var Cube=eval(Number)*eval(Number)*eval(Number);
        alert('Cube of '+eval(Number)+' is: '+Cube)
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