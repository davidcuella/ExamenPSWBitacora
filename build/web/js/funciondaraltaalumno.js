function botonenviar() {

    var txtcontrasena = document.getElementById("txtcontrasena");
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");
    var txtnombre = document.getElementById("txtnombre");
    var txtAppat = document.getElementById("txtAppat");
    var txtApmat = document.getElementById("txtApmat");
    var txtGrupo = document.getElementById("txtGrupo");
    var txtboleta = document.getElementById("txtboleta");
    
    btnEnviarDatos.disabled = true;
    
    if (txtcontrasena.value.length == 0 || txtnombre.value.length == 0
            ||txtAppat.value.length == 0 || txtApmat.value.length == 0
            ||txtGrupo.value.length == 0 || txtboleta.value.length == 0) {
        btnEnviarDatos.disabled = true; 
    } else {
        btnEnviarDatos.disabled = false;
    }
}
