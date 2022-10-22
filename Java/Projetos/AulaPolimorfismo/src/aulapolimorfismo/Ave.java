package aulapolimorfismo;

/*
 * @author Klayvert
*/
public class Ave extends Animal
{
    public Ave(int tamanho, String nome){
        //para usar os atributos da superclasse
        super(tamanho, nome);
    }
    
    @Override
    public void ImprimeNome(){
        System.out.println("O nome da ave é: "+getNome()+ " e ele está");
    }
    
    @Override
    public void Mover(){
        System.out.println("Voando!!!");
    }
    
    @Override
    public void ImprimeTamanho(){
        System.out.println("O tamanho da ave é: "+getTamanho()+"cm e ");
    }
    
    @Override
    public void Alimentacao(){
        System.out.println("Este animal é onívoro");
    }
}
