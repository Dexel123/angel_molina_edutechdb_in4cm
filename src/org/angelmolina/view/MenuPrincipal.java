
package org.angelmolina.view;

import java.util.Scanner;
import org.angelmolina.controller.InstructorController;
/**
 *
 * @author Usuario
 */
public class MenuPrincipal {
   
    private final Scanner leer = new Scanner (System.in);

    public void iniciarSistema(){

        System.out.println("");

        int opcion = 0;

        // Ciclo para el menu: While

        do {            

            System.out.println("----------------------------------------");

            System.out.println("        Sistema central Edutech       ");

            System.out.println("----------------------------------------");

            System.out.println("1. Entrar a Instructores.");

            System.out.println("2. Entrar a Cursos.");

            System.out.println("3. Entrar a Estudiantes.");

            System.out.println("4. Salir del sistema.");

            System.out.println("----------------------------------------");

            opcion = Integer.parseInt(leer.nextLine());

            switch (opcion) {

                case 1:

                    // Instanciar la vista CATEGORIA
                    InstructorView vista = new InstructorView();
                   InstructorController control = new InstructorController(vista);
                    
                   control.iniciar();

                    break;

                case 2:

                    // Instanciar la vista EDITORIAL

                    System.out.println("CURSOS");

                    break;

                case 3  :

                    // Instanciar la vista LIBRO

                    System.out.println("ESTUDIANTES");

                    break;

                default:

                    System.out.println("NO EXISTE LA OPCION");

            }

        } while (opcion != 4);

        System.out.println("\n Hasta la proxima.");

    }

}


