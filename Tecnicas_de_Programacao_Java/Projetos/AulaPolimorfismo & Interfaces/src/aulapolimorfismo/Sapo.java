package aulapolimorfismo;

/*
 * @author Klayvert
*/
public class Sapo extends Animal
{
    public Sapo(int tamanho, String nome){
        //para usar os atributos da superclasse
        super(tamanho, nome);
    }
    
    @Override
    public void ImprimeNome(){
        System.out.println("O nome do sapo é: "+getNome()+ " e ele está");
    }
    
    @Override
    public void Mover(){
        System.out.println("Pulando!!!");
    }
    
    @Override
    public void ImprimeTamanho(){
        System.out.println("O tamanho do sapo é: "+getTamanho()+"cm e ");
    }
    
    @Override
    public void Alimentacao(){
        System.out.println("Este animal é herbívoro");
    }
}
