/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication12;

/**
 *
 * @author aluno.si
 */
public class JavaApplication12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Carro c = new Carro(1, 4, "Rosa", 4, 1);
        c.Imprimir();   
        c.setRodas(5);
        c.setPortas(2);
        c.setCor("Azul");
        c.Imprimir();
    }
    
}
