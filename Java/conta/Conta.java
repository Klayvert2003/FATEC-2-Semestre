package conta;

public class Conta {
    int numero;
    String nome;
    double saldo;
    double limite;

    void saca(double quantidade) {
        double novoSaldo = this.saldo - quantidade;
        this.saldo = novoSaldo;
    }

    void deposito(double quantidade) {
        this.saldo += quantidade;
    }

    public boolean sacar(double valor) {
        if (this.saldo >= valor) {
            this.saldo -= valor;
            return true;
        }
        return false;
    }

    // transferencia
    boolean transferencia(Conta contaDestino, double valor) {
        boolean sacou = this.sacar(valor);
        if (sacou) {
            contaDestino.deposito(valor);
            return true;
        }
        return false;
    }
}
