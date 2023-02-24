package Atividade;

/*
 * @author Klayvert
 */
public class Calculadora 
{

    private int num1 = 0;
    private int num2 = 0;
    private int num3 = 0;
    
    public void soma(int num1, int num2)
    {
        int soma = num1 + num2;
        System.out.println("A soma dos dois valores é: "+soma);

    }
    
    public void soma_subtracao(int num1, int num2, int num3)
    {
        int soma_subtracao = (num1 - num2) + num3;
        System.out.println("A subtração dos dois primeiros valores, mais o terceiro valor é: "+soma_subtracao);
    }
    
    public int multiplicacao (int num1, int num2)
    {
        int multiplicacao = num1 * num2;
        System.out.println("A multiplicação dos dois primeiros valores é: "+multiplicacao);
        return multiplicacao;
    }
    
    public float divisao (int num1, int num2)
    {
        float divisao = num1/num2;
        if(num2 == 0){
            System.out.println("Não é possível dividir por 0");
            return divisao;
        }else{
            System.out.println("O resultado da divisão é: "+divisao);
            return divisao;
        }
    }
    
    
    public void setNum1 (int num1)
    {
        this.num1 = num1;
    }
    
    public void setNum2 (int num2)
    {
        this.num2 = num2;
    }
    
    public void setNum3 (int num3)
    {
        this.num3 = num3;
    }
    
    
    public int getNum1()
    {
        return num1;
    }
    
    public int getNum2()
    {
        return num2;
    }
    
    public int getNum3()
    {
        return num3;
    }
}