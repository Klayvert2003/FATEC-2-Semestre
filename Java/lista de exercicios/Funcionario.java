public class Funcionario {
    String nome;
    String departamento;
    double salario;
    Data dataEntrada;
    String rg;

    void recebeAumento(double aumento) {
        double novoSalario = this.salario + aumento;
        this.salario = novoSalario;
    }

    public void calculaGanhoAnual() {
        System.out.println("Salario anual: " + this.salario * 12);
    }

    void mostra() {
        System.out.println("Nome: " + this.nome);
        System.out.println("Departamento: " + this.departamento);
        System.out.println("Salario: " + this.salario);
        System.out.println("Data: " + this.dataEntrada.formatada());
        System.out.println("RG " + this.rg);
    }

}
