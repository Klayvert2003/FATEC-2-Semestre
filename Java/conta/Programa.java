package conta;

public class Programa {
    public static void main(String[] args) {
        // declarando a variavel do tipo conta
        Conta minhaConta;
        // criando objeto
        minhaConta = new Conta();

        // alterando atributos nome e saldo
        minhaConta.nome = "Maria";
        minhaConta.saldo = 10000.0;

        // exibindo saldo da conta
        System.out.println("Saldo conta " + minhaConta.saldo);

        // sacando valor da conta
        minhaConta.saca(0);

        // exibindo saldo da conta
        System.out.println("Saldo conta " + minhaConta.saldo);

        // sacando valor da conta
        minhaConta.deposito(150);

        // exibindo saldo da conta
        System.out.println("Saldo conta " + minhaConta.saldo);

        // sacar caso saldo suficiente
        boolean sacou = minhaConta.sacar(100);

        if (sacou) {
            System.out.println("saldo: " + minhaConta.saldo);
        } else {
            System.out.println("saldo insuficiente.");
        }

        // transferencia

    }
}
