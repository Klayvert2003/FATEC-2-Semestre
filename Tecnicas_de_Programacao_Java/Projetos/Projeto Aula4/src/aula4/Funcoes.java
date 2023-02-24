/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

/**
 *
 * @author Klayvert
 */
public class Funcoes 
{
    
    double potencia, raiz;
    
    public double potencia(double p)
    {
        double r;
        r = Math.pow(p, 2);
        return r;
    }
    
    public double raiz(double d)
    {
        double r;
        r = Math.sqrt(d);
        return r;
    }
    
    public void imprimir()
    {
        System.out.println("Potência: " + potencia);
        System.out.println("Potência: " + raiz);
    }
}