let Yasirve = window.pageYOffset;
window.onscroll = function(){
    let muevete = window.pageYOffset;
    if(Yasirve >= muevete){
        this.document.getElementById('yameharte').style.top = '0'
    }
    else{
        document.getElementById('yameharte').style.top = '-100px'
    }
    Yasirve = muevete;
}