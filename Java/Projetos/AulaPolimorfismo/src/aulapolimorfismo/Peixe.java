package aulapolimorfismo;

/*
 * @author Klayvert
*/
public class Peixe extends Animal
{
    public Peixe(int tamanho, String nome){
        //para usar os atributos da superclasse
        super(tamanho, nome);
    }
    
    @Override
    public void ImprimeNome(){
        System.out.println("O nome do peixe é: "+getNome()+ " e ele está");
    }
    
    @Override
    public void Mover(){
        System.out.println("Nadando!!!");
    }
    
    @Override
    public void ImprimeTamanho(){
        System.out.println("O tamanho do peixe é: "+getTamanho()+"cm e ");
    }
    
    
    @Override
    public void Alimentacao(){
        System.out.println("este animal é carnívoro");
    }
}
