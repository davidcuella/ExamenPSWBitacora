
package SQL;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MetodsSQL {

    private Connection conexion;
    private PreparedStatement sentenciaPreparada;
    private ResultSet resultado;

    public boolean registrarUsuario(String num_empleado, String nombre, String apellidos, String contrasena, String usuario_generado) {
        boolean registro = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "INSERT INTO usuario (num_empleado,nombre,apelli,contrasena,usuario_generado) VALUES (?,?,?,?,?)";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, num_empleado);
            sentenciaPreparada.setString(2, nombre);
            sentenciaPreparada.setString(3, apellidos);
            sentenciaPreparada.setString(4, contrasena);
            sentenciaPreparada.setString(5, usuario_generado);

            int resultadoInsercion = sentenciaPreparada.executeUpdate();

            if (resultadoInsercion > 0) {
                registro = true; 
                System.out.println("Se hizo el alta del docente");
            } else {
                registro = false; 
                System.out.println("NO se hizo el alta del docente");
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

        System.out.println("Valor del registro: " + registro);
        return registro;
    }
    
    //metodo docente repetido
    public boolean buscarUsuarioRepetidoBD(String num_empleado) {
        boolean usuarioRepetido = false;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT num_empleado FROM usuario WHERE num_empleado = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, num_empleado);
            resultado = sentenciaPreparada.executeQuery();

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

//metodo buscar para docentes
    public boolean buscarUsuarioInicioSesion(String usuario, String contrasena) {
        boolean iniciarSesion = false;

        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT usuario_generado,contrasena FROM usuario WHERE usuario_generado = ? AND contrasena = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            sentenciaPreparada.setString(2, contrasena);
            resultado = sentenciaPreparada.executeQuery();
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
    
    //buscar nombre docente
    public String buscarNombre(String usuario) {
        String nombre = null;
        try {
            conexion = conexionBD.conectar();
            String consulta = "SELECT nombre FROM usuario WHERE usuario_generado = ?";
            sentenciaPreparada = conexion.prepareStatement(consulta);
            sentenciaPreparada.setString(1, usuario);
            resultado =  sentenciaPreparada.executeQuery();
            if(resultado.next()){
                nombre = resultado.getString("nombre");
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