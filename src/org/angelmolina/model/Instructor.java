/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.angelmolina.model;

/**
 *
 * @author Usuario
 */
public class Instructor {
    
    private int dni_Instructor;
    private String nombreInstructor;
    private String especialidadInstructor;
    
    public Instructor() {
    }

    public Instructor(int dni_Instructor, String nombreInstructor, String especialidadInstructor) {
        this.dni_Instructor = dni_Instructor;
        this.nombreInstructor = nombreInstructor;
        this.especialidadInstructor = especialidadInstructor;
    }

    public String getNombreInstructor() {
        return nombreInstructor;
    }

    public void setNombreInstructor(String nombreInstructor) {
        this.nombreInstructor = nombreInstructor;
    }

    public int getDni_Instructor() {
        return dni_Instructor;
    }

    public void setDni_Instructor(int dni_Instructor) {
        this.dni_Instructor = dni_Instructor;
    }
    public String getEspecialidadInstructor() {
        return especialidadInstructor;
    }

    public void setEspecialidadInstructor(String especialidadInstructor) {
        this.especialidadInstructor = especialidadInstructor;
    }
   
   
}
