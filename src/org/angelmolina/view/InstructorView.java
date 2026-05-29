
package org.angelmolina.view;
import java.util.List;
import java.util.Scanner;
import org.angelmolina.model.Instructor;

public class InstructorView {
    private final Scanner leer = new Scanner(System.in);
    
    public int mostrarMenu() {
        System.out.println("\n---GESTION DE INSTRUCTORES---");
        System.out.println("1. Registrar nuevo Instructor");    
        System.out.println("2. Listar todos los Instructores");    
        System.out.println("3. Buscar un Instructor");    
        System.out.println("4. Actualizar un Instructor");    
        System.out.println("5. Eliminar un Instructor");   
        System.out.println("6. Regresar al menu principal");  
        System.out.println("Seleccione una opcion: ");  
        return Integer.parseInt(leer.nextLine());
    }
    public String solicitarNombre() {
        System.out.println("Ingrese el nombre deL instructor");
        return leer.nextLine();
    }
    public int solicitarDNI(){
        System.out.println("Ingre el DNI del instructor");
        return Integer.parseInt(leer.next());
    }
    // list vector de objetos
    public void mostrarTodos(List<Instructor> instructor) {
        System.out.println("\n+++ LISTA DE INSTRUCTORES+++");
      // FOR EACH = ciclo para vectores de objetos
        for (Instructor ins : instructor) {
            System.out.println(ins.getDni_Instructor()+" "+ ins.getNombreInstructor()+"\n");
        }
    }
        public void mostrarCategoria(Instructor instructor){
             System.out.println("\n DETALLE INSTRUCTOR");
             System.out.println("ID: "+ instructor.getDni_Instructor());
             System.out.println("ID: "+ instructor.getNombreInstructor());
             
         }   
         public void mostrarMensaje(String mensaje) {
             System.out.println("");
             
         }
  }   