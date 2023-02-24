package aulapolimorfismo;

/*
 * @author Klayvert
*/

public class PessoaJuridica extends Pessoa{
    
    //Atributos
    private double peso;   //Kg
    private double altura; //Metros
    
    public PessoaJuridica(double peso, double altura){
        this.peso = peso;
        this.altura = altura;
    }
    
    @Override
    public void Imprimir() {
        System.out.println("Implementando...");        
    }
    
    @Override
    public void imcA() {
        System.out.println("imc animal");
    }
}