package atividade2;

import java.util.Scanner;

/*
 * @author Klayvert
*/

public class Calculos
{
    
    public static void main(String[] args) 
    {
        System.out.println("Digite um valor para passar pela verificacao");
        Scanner sc = new Scanner(System.in);
        int num1 = sc.nextInt();
        Atividade2 a = new Atividade2(num1);
        a.Imprimir(num1);
        
        System.out.println("Digite dois valores para serem somados");
        Scanner adicao = new Scanner(System.in);
        int num1ad = adicao.nextInt();
        int num2ad = adicao.nextInt();
        Atividade2 a1 = new Atividade2(num1ad, num2ad);
        a1.Soma(num1ad, num2ad);
        
        System.out.println("Insira um numero para passar pela exponenciacao ou divisao por ele mesmo");
        System.out.println("Se for positivo, sera feito o calculo da raiz quadrada, se for negativo, sera feita a multiplicacao por ele mesmo");
        Scanner raiz = new Scanner(System.in);
        double num2 = raiz.nextDouble();
        Atividade2 a2 = new Atividade2(num1ad);
        a2.RaizeQuadrado(num2);
        
        System.out.println("Digite um numero para saber se ele e multiplo de 3!");
        Scanner multiplo = new Scanner(System.in);
        double nmultiplo = multiplo.nextDouble();
        Atividade2 a3 = new Atividade2(nmultiplo);
        a3.Multiplo3(nmultiplo);
        
        System.out.println("Digite um numero para saber se ele e multiplo de 3 e 7!");
        Scanner multiplo3e7 = new Scanner(System.in);
        double nmultiplo37 = multiplo3e7.nextDouble();
        Atividade2 a4 = new Atividade2(nmultiplo37, nmultiplo);
        a4.Multiplo3e7(nmultiplo37);
        
        System.out.println("Digite um numero para saber se ele e multiplo de 2 ou 5 ou 10!");
        Scanner multiplo2510 = new Scanner(System.in);
        double Multiplo2510 = multiplo2510.nextDouble();
        Atividade2 a5 = new Atividade2();
        a5.Multiplo2510(Multiplo2510);
    }
    }
