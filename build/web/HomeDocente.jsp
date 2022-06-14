
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("txtUsuario") == null && session.getAttribute("nombre") == null){
            response.sendRedirect("index.html");
        }
        %>
    </head>
    <body>
        <div class="contenidoInicio">
            <h1>Hola <%=request.getSession().getAttribute("nombre")%>,¡Bienvenido! </h1>

            <p><a></a></p>

            <p> Sesión iniciada como: ${txtUsuario} </p>

            <form action="CerrarS">
                <input type="submit" value="Cerrar Sesión">
            </form>
          <table class="table-fill">

        <thead>
            <tr>
                <th class="table-left">Nombre del Laboratorio</th>
                <th class="table-left">Grupo</th>
                <th class="table-left">Materia</th>
                <th class="table-left">Nombre del alumno</th>
                <th class="table-left">ID del equipo</th>
            </tr>
        </thead>

        <tbody class="table-hover">
            <tr>
                <td class="text-left">Desarrollo de Software</td>
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
                <td class="text-left"><label></label>
                    <input type="text" required="" placeholder="" id="datos"></td>
                <td class="text-left">
                    <!--<button id="iniciar" onclick="validarRegistro()"><a href="#">Registrarse</a></button>-->
                    <input id="registrar" type="submit" value="Guardar reporte">
                </td>
            </tr>
            <tr>
                <td class="text-left">Laboratorio de base de datos</td>
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
                <td class="text-left"><label></label>
                    <input type="text" required="" placeholder="" id="datos"></td>
                <td class="text-left">
                    <!--<button id="iniciar" onclick="validarRegistro()"><a href="#">Registrarse</a></button>-->
                    <input id="registrar" type="submit" value="Guardar reporte">
                </td>
            </tr>
            <tr>
                <td class="text-left">El aula 4.0</td>
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
                <td class="text-left"><label></label>
                    <input type="text" required="" placeholder="" id="datos"></td>
                <td class="text-left">
                    <!--<button id="iniciar" onclick="validarRegistro()"><a href="#">Registrarse</a></button>-->
                    <input id="registrar" type="submit" value="Guardar reporte">
                </td>
            </tr>
            <tr>
                <td class="text-left">Nuevas tecnologías</td>
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
                <td class="text-left"><label></label>
                    <input type="text" required="" placeholder="" id="datos"></td>
                <td class="text-left">
                    <!--<button id="iniciar" onclick="validarRegistro()"><a href="#">Registrarse</a></button>-->
                    <input id="registrar" type="submit" value="Guardar reporte">
                </td>
            </tr>

        </tbody>
    </table>
        </div>
    </body>
</html>