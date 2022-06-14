
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/EstiLogin.css" type="text/css" media="all">
        <title>JSP Page</title>
        <%
        response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        %>
    </head>
    <body>
                <div class="Formulario" id="Formulario">
            <form class="Login" id="Login" method="post" action="ISesionA">
                <h1>Iniciar Sesion (Alumno)</h1>
                <p>Boleta</p>
                <div class="texto">
                    <input type="text" class="txt" id="txtboleta" required="" name="txtboleta">
                </div>
                <p>Contraseña:</p>
                <div class="texto">
                    <input type="password" class="txt" id="txtcontrasena" required="" name="txtcontrasena">
                </div>
                <input type="submit" value="Iniciar Sesion" class="btn">
                <input type="button" value="Borrar Datos" class="btn" onclick="borrarDatos()">

            </form>
        </div>
    </body>
</html>
