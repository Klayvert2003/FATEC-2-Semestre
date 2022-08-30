package conta;

public class Programa2 {
    public static void main(String[] args) {
        // declarando a variavel do tipo conta
        Conta contaCorrente;
        Conta contaPoupanca;

        // criando objeto
        contaCorrente = new Conta();
        contaPoupanca = new Conta();

        // alterando atributos/propriedade nome e saldo
        contaCorrente.nome = "Maria";
        contaCorrente.saldo = 1000.0;

        // igualando propriedade/atributo
        contaPoupanca.saldo = contaCorrente.saldo;

        // exibindo saldo da conta
        System.out.println("Saldo conta corrente: " + contaCorrente.saldo);
        System.out.println("Saldo conta poupança: " + contaPoupanca.saldo);

        // sacando valor da conta e informando se é possivel
        if (!contaCorrente.sacar(200)) {
            System.out.println("Saldo insuficiente!");
        }
        if (!contaPoupanca.sacar(200)) {
            System.out.println("Saldo insuficiente!");
        }

        // exibindo saldo da conta
        System.out.println("\n\nSaldo conta corrente pós saque: " + contaCorrente.saldo);
        System.out.println("Saldo conta poupança pós saque: " + contaPoupanca.saldo);

        // transferindo valor e informando se é possivel
        if (!contaCorrente.transferencia(contaPoupanca, 100)) {
            System.out.println("Saldo insuficiente!");
        }

        // exibindo saldo da conta
        System.out.println("\n\nSaldo conta corrente pós transferencia: " + contaCorrente.saldo);
        System.out.println("Saldo conta poupança pós transferencia: " + contaPoupanca.saldo);

    }
}
