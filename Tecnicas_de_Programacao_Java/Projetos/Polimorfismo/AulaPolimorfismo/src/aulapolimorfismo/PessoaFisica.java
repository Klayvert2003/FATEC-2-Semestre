package aulapolimorfismo;

/*
 * @author Klayvert
*/

public class PessoaFisica extends Pessoa{

    //Atributos
    private double peso; //Kg
    private double altura; //Metros
    
    public PessoaFisica(double peso, double altura){
        this.peso = peso;
        this.altura = altura;
    }
    
    @Override
    public void Imprimir() {
        System.out.println("Implementar...");
    }   
    
    @Override
    public void imcA() {
        super.imcA();
    }
}