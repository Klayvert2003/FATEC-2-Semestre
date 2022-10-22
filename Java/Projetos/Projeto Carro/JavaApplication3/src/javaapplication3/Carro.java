/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package javaapplication3;


/**
*
* @author Klayvert
*/
public class Carro 
{
    //atributos
    private int rodas = 4;
    private int portas = 4;
    private String placa = "ABC 1234";
    private String cor = "Preto";
    private boolean gasolina = true;
    
    // métodos getters e setters
    //get
    
    public int getRodas()
    {
        return rodas;
    }
    
    public int getPortas()
    {
        return portas;
    }
    
    public String getPlaca()
    {
        return placa;
    }
    
    public String getCor()
    {
        return cor;
    }
    
    public boolean getGasolina()
    {
        return gasolina;
    }
    
    
    //set
    
    public void setRodas(int rodas)
    {
        this.rodas = rodas;
    }
    
    public void setPortas(int portas)
    {
        this.portas = portas;
    }
    
    public void setPlaca(String placa)
    {
        this.placa = placa;
    }
    
    public void setCor(String cor)
    {
        this.cor = cor;
    }
    
    public void setGasolina(boolean gasolina)
    {
        this.gasolina = gasolina;
    }
    
    
    // imprimir
    public void imprimir()
    {
        System.out.println("Portas: " + portas);
        System.out.println("Rodas: " + rodas);
        System.out.println("Cor: " + cor);
        System.out.println("Placa: " + placa);
    }
    
    public static void main(String[] args) 
    {
        // INSTANCIAR UM OBJETO DO TIPO CARRO
        Carro carro1 = new Carro();
        
        System.out.println("Características do Carro 1");
        carro1.imprimir();
        
        Carro carro2 = new Carro();
        System.out.println("Características do Carro 2");
        carro2.imprimir();
    }
}