/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade;

/**
 *
 * @author Klayvert
 */
public class Atividade 
{
    public int n1, n2;
    
    void Soma(int n1, int n2){
        this.n1 = n1;
        this.n2 = n2;
        int total = n1 + n2;
    }
    
    static void Divisao(){
        
    }
    
    public void Divisao(int n1, int n2){
        this.n1 = n1;
        this.n2 = n2;
        int total = n1 / n2;
    }

    public int getN1() {
        return n1;
    }

    public void setN1(int n1) {
        this.n1 = n1;
    }

    public int getN2() {
        return n2;
    }

    public void setN2(int n2) {
        this.n2 = n2;
    }
    
    
    
    public static void main(String[] args) 
    {
        
    }
    
}
