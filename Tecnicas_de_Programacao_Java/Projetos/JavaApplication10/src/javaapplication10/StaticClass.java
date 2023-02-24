package javaapplication10;

import java.util.Scanner; 

/*
 * @author Klayvert
*/

public class StaticClass 
{
    int x;
    
    public static void somar(double valor1, double valor2)
    {
        System.out.println("Soma: " + (valor1 + valor2));
    }
    
    public static void dividir(double valor1, double valor2)
    {
        System.out.println("Divisão: " + (valor1 / valor2));
    }
    
    public static void subtrair(double valor1, double valor2)
    {
        System.out.println("Divisão: " + (valor1 - valor2));
    }
    
    public static void multiplicar(double valor1, double valor2)
    {
        System.out.println("Divisão: " + (valor1 * valor2));
    }
    
    public static void potencia(double base, double expoente)
    {
        double resultado = Math.pow(base, expoente);
        System.out.println("Potencia: " + resultado);
    }
    
    public static Scanner receberTeclado()
    {
        Scanner sc = new Scanner(System.in);
        return sc;
    }
    
    public void metodoIF()
    {
        if(x < 0)
        {
            System.out.println("Número negativo");
        }
    }
    
    public void metodoIFElse()
    {
        if(x < 0)
        {
            System.out.println("Número negativo!!");
        }else{
            System.out.println("Número positivo!!");
        }
    }
    
    public void metodoIFElseIF()
    {
        if(x > 0 && x <= 10)
        {
            System.out.println("X entre 0 e 10");
        }else if(x > 10 && x <= 20){
            System.out.println("X entre 11 e 20");
        }else{
            System.out.println("X maior que 20 ou menos que 0");
        }
    }
    
    public void metodoSwitch()
    {
        int opcao = 0;
        switch(opcao)
        {
            case 1:
                System.out.println("Caso 1");
                break;
            
            case 2:
                System.out.println("Caso 2");
                break;
                
            default:
                System.out.println("Fora das opções");
                break;
        }
    }
    
    public void metodoWhile()
    {
        while(x < 10){
            System.out.println("X: " + x);
            x++;
            //x++;
            //x = x + 1;
            //x += 1;
        }
    }
    
    public void metodoFor()
    {
        for(int i = 0; i < 10; i++)
        {
            System.out.println("de 1 em 1");
        }
        
        for(int j = 0; j < 10; )
        {
            System.out.println("de 2 em 2");
            j = j + 2;
        }
        
        for(;;)
        {
            System.out.println("looping infinito!!!");
        }
    }
}
    
    //public static final int x = 10;
    
    //public static void metodoEstatico()
    //{
        //System.out.println("Método estático");
    //}
