<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilAltadocente.css" type="text/css" media="all">
        <title>JSP Page</title>
    </head>
    <body>
                <div class="cuerpoFormulario" id="cuerpoFormulario"> 
            <form class="formularioAlta" id="formularioAlta" method="post" action="Save">
                <h1>Registro de Docentes</h1>
                <br>
                <label>Numero de empleado</label> <input type="text" class="txt" id="txtNumE" required="" name="txtNumE">
                <br>
                <br>
                <label>Nombre:</label> <input type="text" class="txt" id="txtNombre" required="" onkeyup="GenerarUsuario()" name="txtNombre">
                <label>Apellidos:</label> <input type="text" class="txt" id="txtApellidos" required="" onkeyup="GenerarUsuario()" name="txtApellidos">
                <br>
                <br>
                <label>Contraseña:</label> <input type="password" class="txt" id="txtContrasena" required="" onkeyup="contrasenaigual()">
                <label>Repetir la Contraseña:</label> <input type="password" class="txt" id="txtRepetirContrasena" required="" onkeyup="contrasenaigual()" name="txtContrasena">
                <br>
                <br>
                <label class="avisoContrasena" id="avisoContrasena"> ------- </label>
                <br>
                <br>
                <label>Generador de Usuario:</label> <input type="text" class="txt" id="txtUsuarioGeneradoAutomaticamente" required="" readonly="" name="txtGenerarUsuario">
                <br>
                <br>
                
                <input type="submit" value="Enviar Datos" class="btn" id="btnEnviarDatos" disabled="">
                <input type="button" value="Borrar Datos" class="btn" id="btnBorrar" onclick="resetear()">
               
            </form>
        </div>
    </body>
    <script src="js/funcionesdaraltausuario.js"></script>
</html>
