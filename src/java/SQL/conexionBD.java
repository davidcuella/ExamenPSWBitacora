package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionBD {
           private static String url = "jdbc:mysql://127.0.0.1:3306/bd_docente";
    private static String usuario = "root";
    private static String contrasena = "password";
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url,usuario,contrasena);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: " + e);
        }
        return conexion;
    }

}
