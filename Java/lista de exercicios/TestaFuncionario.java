public class TestaFuncionario {
    public static void main(String[] args) {

        Funcionario f1;
        Funcionario f2;
        Funcionario f3;

        f1 = new Funcionario();
        f2 = new Funcionario();
        f3 = new Funcionario();

        Data d1 = new Data();
        Data d2 = new Data();

        d1.dia = 3;
        d1.mes = 2;
        d1.ano = 2015;

        d2.dia = 2;
        d2.mes = 5;
        d2.ano = 2005;

        f1.nome = "Ana";
        f1.departamento = "Fiscal";
        f1.salario = 2500.0;
        f1.dataEntrada = d1;
        f1.rg = "xx.xxx.xxx-x";

        f2.nome = "João";
        f2.departamento = "Compras";
        f2.salario = 3000.00;
        f2.dataEntrada = d2;
        f2.rg = "nn.nnn.nnn-n";

        f3.nome = "Paula";
        f3.departamento = "Juridico";
        f3.salario = 5000.0;
        f3.rg = "xx.xxx.xxx-x";

        f1.mostra();

        f1.recebeAumento(500);

        f1.mostra();

        f1.calculaGanhoAnual();

        if (f1 == f2) {
            System.out.println("iguais");
        } else {
            System.out.println("diferentes");
        }

        // f1 = f2;

        // if (f1 == f2) {
        //     System.out.println("iguais");
        // } else {
        //     System.out.println("diferentes");
        // }

        
        // Exercicio 7 - teste sem data atribuida
        
        // f3.mostra();

        // ocorre um erro pois a data está nula


        // Exercicio 8
        // Funcionario.salario = 1234.0;
        // Funcionario.calculaGanhoAtual();
        // Não faz sentido, não é possivel fazer isso.

        d1.formatada();










    }
}