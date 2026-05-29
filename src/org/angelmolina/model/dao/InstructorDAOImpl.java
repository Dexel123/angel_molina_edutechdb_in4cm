
package org.angelmolina.model.dao;

import java.util.ArrayList;
import java.util.List;
import org.angelmolina.model.Instructor;
import java.sql.Connection;
import org.angelmolina.model.conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;

public class InstructorDAOImpl implements InstructorDAO {

    @Override
    public boolean instertar(Instructor instructor) {
        return false;
    }

   @Override
public List<Instructor> listar() {
    List<Instructor> instructores = new ArrayList<>();
    
    // CORRECCIÓN: Quitamos el '(' inicial y el '}' final. Dejamos la sintaxis limpia de MySQL.
    String consulta = "CALL sp_listar_instructores()"; 
    
    try (Connection conexion = Conexion.conectar();
         CallableStatement call = conexion.prepareCall(consulta);
         ResultSet resultado = call.executeQuery()) {
         
        while(resultado.next()){
            instructores.add(new Instructor(
                    resultado.getInt("dni_instructor"), // Asegúrate de que en tu BD la columna sea 'in_categoria' (o tal vez 'id_categoria')
                    resultado.getString("nombre_isntructor"),
                    resultado.getString("especialidad_isntructor")
            ));
        }
        
    } catch(Exception e) {
        System.out.println("ERROR: al listar categorias: " + e.getMessage());
        e.printStackTrace(); // Te agregué esto temporalmente por si surge algún otro detalle interno
    }
    return instructores;
    }

    @Override
    public Instructor buscar(int dni) {
        return null;
    }

    @Override
    public boolean actualizar(Instructor instructor) {
        return false;
    }

    @Override
    public boolean eliminar(int dni) {
         return false;
    }
    
    
}

