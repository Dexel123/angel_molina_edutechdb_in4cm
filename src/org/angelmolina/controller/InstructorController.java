package org.angelmolina.controller;

import org.angelmolina.model.dao.InstructorDAO;
import org.angelmolina.model.Instructor;
import org.angelmolina.model.dao.InstructorDAOImpl;
import org.angelmolina.view.InstructorView;
import java.util.List;
public class InstructorController {
    private final InstructorView vista;
    private final InstructorDAO dao;
    
    public InstructorController(InstructorView vista) {
        this.vista = vista;
        this.dao = new InstructorDAOImpl();
    }
    public void iniciar(){
        int opcion;
        do{
            opcion = vista.mostrarMenu();
            switch (opcion) {
                case 2:
                    listar();
                    break;
                case 6:
                    System.out.println("Si hay");
                    break;
                default:
                    System.out.println("NO hay");
            }
    }while (opcion != 6);
        
    }
private void listar(){
    
    List<Instructor>lista = dao.listar();
    
    if (lista.isEmpty()) {
        vista.mostrarMensaje("NO HAY CATEGORIAS");
        
    }else {
        vista.mostrarTodos(lista);
    }
}
    
}
