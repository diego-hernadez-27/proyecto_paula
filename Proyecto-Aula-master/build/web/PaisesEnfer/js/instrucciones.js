function mostrar(muestra) {
    document.getElementById(muestra).style.display="block";
    var linea = document.getElementsByClassName('l')
    var i;
    for (i = 0; i < linea.length; i++) {
        var lineadef = linea.item(i).getAttribute("id");
        if (lineadef != muestra) {
        document.getElementById(lineadef).style.display="none";
        }
    }
}

