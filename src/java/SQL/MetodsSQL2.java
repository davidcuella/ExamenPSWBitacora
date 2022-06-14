
package SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MetodsSQL2 {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada2;
    private ResultSet resultado;

    //método para alumnos
    public boolean registrarAlumno(String Boleta, String Nombre, String Apellidop, String Apellidom, String Contrasena, String Grupo) {
        boolean registro2 = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "INSERT INTO alumno (Boleta,Nombre,Apellidop,Apellidom,Contrasena,Grupo) VALUES (?,?,?,?,?,?)";
            sentenciaPreparada2 = conexion.prepareStatement(consulta);
            sentenciaPreparada2.setString(1, Boleta);
            sentenciaPreparada2.setString(2, Nombre);
            sentenciaPreparada2.setString(3, Apellidop);
            sentenciaPreparada2.setString(4, Apellidom);
            sentenciaPreparada2.setString(5, Contrasena);
            sentenciaPreparada2.setString(6, Grupo);

            int resultadoInsercion = sentenciaPreparada2.executeUpdate();

            if (resultadoInsercion > 0) {
                registro2 = true; 
                System.out.println("Se hizo el alta del alumno");
            } else {
                registro2 = false; 
                System.out.println("NO se hizo el alta del alumno");
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("Valor del registro: " + registro2);
        return registro2;
    }

    //metodo alumno repetido
public boolean buscarAlumnoRepetidoBD(String Boleta) {
        boolean usuarioRepetido = false;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT Boleta FROM alumno WHERE Boleta = ?";
            sentenciaPreparada2 = conexion.prepareStatement(consulta);
            sentenciaPreparada2.setString(1, Boleta);
            resultado = sentenciaPreparada2.executeQuery();

            if (resultado.next()) {
                usuarioRepetido = true; 
            } else {
                usuarioRepetido = false;
            }

            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("El valor del usuario Repetido en el METODO es: " + usuarioRepetido);
        return usuarioRepetido;
    }

//metodo buscar para alumnos
    public boolean buscarAlumnoInicioSesion(String Boleta, String Contrasena) {
        boolean iniciarSesion = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT Boleta,Contrasena FROM alumno WHERE Boleta = ? AND Contrasena = ?";
            sentenciaPreparada2 = conexion.prepareStatement(consulta);
            sentenciaPreparada2.setString(1, Boleta);
            sentenciaPreparada2.setString(2, Contrasena);
            resultado = sentenciaPreparada2.executeQuery();
            if (resultado.next()) {
                iniciarSesion = true;
            } else {
                iniciarSesion = false;
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: " + e);
            }
        }

        System.out.println("El valor de iniciarSesion en el metodo es: " + iniciarSesion);
        return iniciarSesion;
    }
    
    //buscar nombre alumno
    public String buscarNombreAlumno(String alumno) {
        String nombre = null;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT Apellidop FROM alumno WHERE Nombre = ?";
            sentenciaPreparada2 = conexion.prepareStatement(consulta);
            sentenciaPreparada2.setString(1, alumno);
            resultado =  sentenciaPreparada2.executeQuery();
            if(resultado.next()){
                nombre = resultado.getString("Nombre");
            }else{
                nombre = null; 
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: " +e);
        }finally{
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error" + e);
            }
        }
        
        System.out.println("El valor del nombre  es : "  + nombre);
        return nombre;
    }

}