/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aula4;

/**
 *
 * @author Klayvert
 */
public class Moto 
{
    // Atributos
    private int motor;
    private int rodas;
    private String cor;
    
    //Construtor
    public Moto(int motor, int rodas, String cor)
    {
        this.motor = motor;
        this.rodas = rodas;
        this.cor = cor;
    }
    
    public void setMotor(int motor)
    {
        this.motor = 2;
    }
    
    public void setRodas(int rodas)
    {
        this.rodas = 2;
    }
    
    public void setCor(String cor)
    {
        this.cor = "Preto";
    }
    
    public int getMotor()
    {
        return motor;
    }
    
    public int getRodas()
    {
        return rodas;
    }
    
    public String getCor()
    {
        return cor;
    }
    
}
