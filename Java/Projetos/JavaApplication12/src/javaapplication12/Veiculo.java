package javaapplication12;

/*
 * @author Klayvert
 */
public class Veiculo
{
    private int motor;
    private int rodas;
    private String cor;
    
    public Veiculo(int motor, int rodas, String cor)
    {
        this.motor = motor;
        this.rodas = rodas;
        this.cor = cor;
    }

    public int getMotor() {
        return motor;
    }

    public void setMotor(int motor) {
        this.motor = motor;
    }

    public int getRodas() {
        return rodas;
    }

    public void setRodas(int rodas) {
        this.rodas = rodas;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }
    
    public void Imprimir()
    {
        System.out.println("Motor: " + motor);
        System.out.println("Rodas: " + rodas);
        System.out.println("Cor: " + cor);
    }
}