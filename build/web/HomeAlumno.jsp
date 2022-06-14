
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("txtboleta") == null && session.getAttribute("txtboleta") == null){
            response.sendRedirect("index.html");
        }
        %>
    </head>
    <body>
        <div class="contenidoInicio">
            <h1>Hola <%=request.getSession().getAttribute("txtboleta")%>,¡Bienvenido! </h1>

            <p><a></a></p>

            <p> Sesión iniciada con la boleta: ${txtboleta} </p>

            <form action="CerrarSA">
                <input type="submit" value="Cerrar Sesión">
            </form>
            <br>
            <br>
            <br>
           <table class="table-fill">

        <thead>
            <tr>
                <th class="table-left">Laboratorios de programación</th>
                <th class="table-left">Grupo</th>
                <th class="table-left">Materia</th>
                <th class="table-left">Nombre completo</th>
                <th class="table-left">ID del equipo</th>
                <th class="table-left">Horario</th>
                <th class="table-left">Observación</th>


            </tr>
        </thead>

        <tbody class="table-hover">
            <tr>
                <td class="text-left">
                    <label>Lugar</label>
                    <select name="Materia" id="id">
                        <option value="">Aula 4.0</option>
                        <option value="">Desarrollo de Software</option>
                        <option value="">Base de Datos</option>
                        <option value="">Nuevas tecnologías</option>
                        </select> </td>
                <td class="text-left"><label>Grupo:</label>
                    <select name="Materia" id="id">
                        <option value="">4IV7</option>
                        <option value="">4IV8</option>
                        <option value="">4IV9</option>
                        <option value="">4IV10</option>
                        <option value="">6IV7</option>
                        <option value="">6IV8</option>
                        <option value="">6IV9</option>
                        <option value="">6IV10</option>
                        </select> </td>
                <td class="text-left"><label>Materia:</label><select name="Materia" id="id">
                    <option value="">Programación y Servicios web</option>
                    <option value="">Base de Datos</option>
                    <option value="">Tecnicas de programación</option>
                    <option value="">Laboratorio de proyectos</option>
                </select> 
                   </td>
                <td class="texto-left"><div class="Datos">
                    <label>Nombre:</label>
                    <input type="text" required="" placeholder="" id="datos">
                </td>
                <td class="text-left"><label>ID:</label>
                    <input type="text" required="" placeholder="" id="datos">
                </td>
                <td class="text-left"><label>Horario:</label><select name="Materia" id="id">
                        <option value="">8:00am a 10:00am</option>
                        <option value="">10:00am a 12:00pm</option>
                        <option value="">12:00pm a 2:00pm</option>
                        <option value="">2:00pm a 4:00pm</option>
                        <option value="">4:00pm a 6:00pm</option>
                        <option value="">6::00pm a 8:00pm</option>
                        <option value="">8:00pm a 9:00pm</option>
                </select> 
                </td>
                <td class="text-left"><label>Observación:</label><input type="text" required="" placeholder="" id="datos"> 
            </td>
                <td class="text-left">
                    <!--<button id="iniciar" onclick="validarRegistro()"><a href="#">Registrarse</a></button>-->
                    <input id="registrar" type="submit" value="registrar">
                </td>
            </tr>
        </tbody>
    </table>
        </div>
            
    </body>
</html>