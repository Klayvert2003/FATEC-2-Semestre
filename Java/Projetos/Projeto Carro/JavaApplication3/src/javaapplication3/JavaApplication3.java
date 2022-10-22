/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication3;

/**
 *
 * @author aluno.si
 */
public class JavaApplication3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        
        // INSTANCIAR UM OBJETO DO TIPO CARRO
        Carro carro1 = new Carro();
        int portasLocal;
        
        portasLocal = carro1.getPortas(); //4
        
        carro1.setPortas(3);
        System.out.println("Quantidade de portas do carro 1: " + carro1.getPortas());
        
        Carro carro2 = new Carro();
        
        //mostra a quantidade inicial de portas que é 4
        System.out.println("Quantidade de portas do carro 2: " + carro2.getPortas()); 
        
        //Receber quantidade de portas do veículo
        portasLocal = carro1.getPortas(); //4
        portasLocal = portasLocal + 1; //5
        System.out.println("portasLocal: " + portasLocal);
        
        System.out.println("Portas do carro: " + carro1.getPortas());
        carro1.imprimir();
    }
    
}
