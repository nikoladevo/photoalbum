var timetogo = 30;

var timer = window.setInterval(function()
{    
    var timertext = document.getElementById("timer");
    timertext.innerHTML = 'у вас есть ' + timetogo + ' сек';
    if (timetogo <= 0){
         window.location.href = "games?next=true";
         
    }
    timetogo--;
}, 1000);
