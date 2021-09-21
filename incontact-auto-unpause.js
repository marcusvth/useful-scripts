var pauseBreak = document.querySelector('li[data-outstate-description="Break"]');
var pauseAdmin = document.querySelector('li[data-outstate-description="Admin"]');
var pauseLunch = document.querySelector('li[data-outstate-description="Lunch"]');

function enableBreak(){
    pauseBreak.click();
    setTimeout(() => pauseAdmin.click(), 600000)
}

function enableLunch(){
    pauseLunch.click();
    setTimeout(() => pauseAdmin.click(), 3600000)
}