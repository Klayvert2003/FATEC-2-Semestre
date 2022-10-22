package atividade2;

/*
 * @author Klayvert
*/
public class Atividade2 
{

    public int num1;
    public double num2;
    public int num1ad;
    public int num2ad;
    public double nmultiplo;
    public double nmultiplo37;
    public double nmultiplo2510;

    Atividade2()
    {
        
    }
    
    Atividade2(int num1)
    {
        this.num1 = num1;
    }
    
    Atividade2(int num1ad, int num2ad)
    {
        this.num1ad = num1ad;
        this.num2ad = num2ad;
    }
    
    Atividade2(double num2)
    {
        this.num2 = num2;
    }
    
    Atividade2(double nmultiplo37, double nmultiplo)
    {
        this.nmultiplo37 = nmultiplo37;
    }
    
    public static void Imprimir(int num1)
    {
        if(num1 > 20)
        {
            System.out.println("O numero " + num1 + " e maior que 20\n");
        }else{
            System.out.println("O numero " + num1 + " nao e maior que 20\n");
        }
    }
    
    public static void Soma(int num1ad, int num2ad)
    {
        int soma = num1ad + num2ad;
        
        if(soma > 10)
        {
            System.out.println("A soma dos dois numeros e: " + soma + "\n");
        }else{
            System.out.println("A soma e: " + soma + " logo, a soma e menor do que 10\n");
        }
    }
    
    public static void RaizeQuadrado(double num2)
    {
        if(num2 >= 0)
        {
            double raiz = Math.sqrt(num2);
            System.out.println("A raiz do numero e: " + raiz + "\n");
        }else{
            double potencia = num2 * num2;
            System.out.println("A potencia do numero e: " + potencia + "\n");
        }
    }
    
    public static void Multiplo3(double nmultiplo)
    {
        if(nmultiplo % 3 == 0)
        {
            System.out.println("O numero e multiplo de 3\n");
        }else{
            System.out.println("O numero nao e multiplo de 3\n");
        }
    }
    
    public static void Multiplo3e7(double nmultiplo37)
    {
        if((nmultiplo37 % 3 == 0) && (nmultiplo37 % 7 == 0))
        {
            System.out.println("O numero e multiplo de 3 e 7 respectivamente\n");
        }else{
            System.out.println("O numero nao e multiplo de 3 e 7 respectivamente\n");
        }
    }
    
    public static void Multiplo2510(double nmultiplo2510)
    {
        if((nmultiplo2510 % 2 == 0))
        {
            System.out.println("O numero e multiplo de 2\n");
        }
        if((nmultiplo2510 % 5 == 0)){
            System.out.println("O numero e multiplo de 5\n");
        }
        if((nmultiplo2510 % 10 == 0)){
            System.out.println("O numero e multiplo de 10\n");
        }else{
            System.out.println("O numero nao e multiplo nem de 2, nem de 5 e nem de 10\n");
        }
        }
    
    public double getNum1() {
        return num1;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }
}