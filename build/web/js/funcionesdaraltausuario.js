function resetear() {
    document.getElementById("formularioAlta").reset();
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");
    
    btnEnviarDatos.disabled = false;
    avisoContrasena.innerHTML = "__________";
    avisoContrasena.style.color = "black";
}

function GenerarUsuario() {

    var nombre = document.getElementById("txtNombre");
    var apellidos = document.getElementById("txtApellidos");

    var usuarioGeneradoAutomaticamente = document.getElementById("txtUsuarioGeneradoAutomaticamente");


    var resultadoCombinado = nombre.value.slice(0, 3) + apellidos.value.slice(0, 3) + "@correo.com";

    usuarioGeneradoAutomaticamente.value = resultadoCombinado;

    if (nombre.value.length == 0 || apellidos.value.length == 0) {
        usuarioGeneradoAutomaticamente.value = "";
    }
}


function contrasenaigual() {

    var txtContrasena = document.getElementById("txtContrasena");
    var txtRepetirContrasena = document.getElementById("txtRepetirContrasena");
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnEnviarDatos = document.getElementById("btnEnviarDatos");

    btnEnviarDatos.disabled = true; //Boton en desactivado o apagado

    if (txtContrasena.value.length == 0 || txtRepetirContrasena.value.length == 0) {
        avisoContrasena.innerHTML = "No puedes dejar campos vaciós de contraseñas";
        avisoContrasena.style.color = "blue";
        btnEnviarDatos.disabled = true;

    } else if (txtContrasena.value != txtRepetirContrasena.value) {
        avisoContrasena.innerHTML = "Las contraseñas no coinciden";
        avisoContrasena.style.color = "red";
        btnEnviarDatos.disabled = true;

    } else {
        avisoContrasena.innerHTML = "Contraseñas coincidentes!";
        avisoContrasena.style.color = "green";
        btnEnviarDatos.disabled = false;
    }


}