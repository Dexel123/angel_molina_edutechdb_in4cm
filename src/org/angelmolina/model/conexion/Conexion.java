package org.angelmolina.model.conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // String de conexion : URL, USER, PASSWORD -> Static
    private static final String URL = "jdbc:mysql://localhost:3306/EduTechdb_In4cm?serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "123";

    public static Connection conectar(){
        Connection conexion = null;
        try {
            // LÍNEA CORREGIDA: Sin el punto inicial y con 'jdbc' en lugar de 'jdbe'
            Class.forName("com.mysql.cj.jdbc.Driver");

            conexion = DriverManager.getConnection(URL, USER, PASSWORD);    
        } catch ( ClassNotFoundException e ) {
            System.out.println("ERROR: no hay drivers (Clase no encontrada)");
            e.printStackTrace(); // Te recomiendo dejar esto para ver más detalles si vuelve a fallar
        } catch ( SQLException ex ) {
            System.out.println("ERROR: no se pudo conectar a la DB " + ex.getMessage());
        }

        return conexion;
    }
}
