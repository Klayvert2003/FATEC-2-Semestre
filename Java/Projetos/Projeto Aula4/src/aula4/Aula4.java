/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aula4;

import java.util.Scanner;

/**
 *
 * @author aluno.si
 */
public class Aula4 
{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        /*
        Moto moto1 = new Moto(1, 2, "Amarelo");
        Moto moto2 = new Moto(2, 3, "Preto");
        
        System.out.println("Motor: " + moto1.getMotor());
        System.out.println("Motor: " + moto1.getRodas());
        System.out.println("Motor: " + moto1.getCor());
        
        System.out.println("Motor: " + moto2.getMotor());
        System.out.println("Motor: " + moto2.getRodas());
        System.out.println("Motor: " + moto2.getCor());
    }
    */
        //uso da palavra chave (final). Isso impossibilita a alteração do dado da variável.
        final int x = 10;
        //x = 11; não funciona.
        
        //System.out.println("PI: " + Math.PI);
        Scanner sc = new Scanner(System.in);
        Funcoes f = new Funcoes();
        double p, potencia, raiz;
        
        System.out.println("Digite um valor para ser potencializado");
        p = sc.nextDouble(); // Recebendo um valor double via teclado
        potencia = f.potencia(p);
        System.out.println(potencia);
        
        System.out.println("Digite um valor que deseje calcular a raiz quadrada");
        raiz = sc.nextDouble(); // Recebendo um valor double via teclado
        raiz = f.raiz(raiz);
        System.out.println(raiz);
}
}
