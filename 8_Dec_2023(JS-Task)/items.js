var items = []
function add() {
    var Price = eval(document.getElementById("price").value)
    items.push(Price)
    var str = ''
    for (let i = 0; i < items.length; i++) {
        str = str + '<li>' + items[i] + '</li>';
    }
    document.getElementById('list').innerHTML = str
}
function total() {
    sum = 0
    for (let i = 0; i < items.length; i++) {
        sum += items[i];
    }
    cost1=sum
    document.getElementById('span1').innerHTML = cost1    
}
function discount() {
    dis = cost1 - ((5/100)*cost1)
    document.getElementById('span2').innerHTML = dis
}
function gst() {
    tax=dis+((18/100)*dis)
    document.getElementById('span3').innerHTML= tax
}
function totalcost() {
    
}