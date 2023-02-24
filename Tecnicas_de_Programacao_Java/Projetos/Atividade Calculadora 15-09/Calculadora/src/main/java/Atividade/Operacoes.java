package Atividade;
import java.util.Scanner;


/**
 *
 * @author Klayvert
 */
public class Operacoes 
{
    public static void main(String[] args) {
    Calculadora calc = new Calculadora();
        
        Scanner ler = new Scanner(System.in);
        int soma = 0;
        int soma_subtracao = 0;
        int multiplicacao = 0;
        int divisao = 0;
        
        System.out.println("Operações");
        System.out.println("Insira o primeiro valor");
        calc.setNum1(ler.nextInt());
        System.out.println("Insira o segundo valor");
        calc.setNum2(ler.nextInt());
        System.out.println("Insira o terceiro valor");
        calc.setNum3(ler.nextInt());
        
        calc.soma(calc.getNum1(), calc.getNum2());
        
        calc.soma_subtracao(calc.getNum1(), calc.getNum2(), calc.getNum3());
        
        calc.multiplicacao(calc.getNum1(), calc.getNum2());
        
        calc.divisao(calc.getNum1(), calc.getNum2());
        
    }
}