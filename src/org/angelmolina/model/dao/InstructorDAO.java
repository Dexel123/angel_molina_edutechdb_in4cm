package org.angelmolina.model.dao;

import java.util.List;
import org.angelmolina.model.Instructor;


public interface InstructorDAO {
    // GUARDA LA FIRMA DE METODO: ES UIN METODO SIN CONTEDNIDO
    //sirven para implementat obligariamente las firmas del metodo
    
    //CRUD
    
    boolean instertar(Instructor instructor);
    List<Instructor> listar();
   Instructor buscar(int dni);
    boolean actualizar(Instructor Instructor);
    boolean eliminar(int dni);
}
