package lista3;

/*
 * @author Klayvert
*/

//Herdando da classe Animal
public class Ave extends Animal{
    
    //Construtor para ser usado na Classe Animal
    public Ave(int patas, String nome, String comida){
        super(patas, nome, comida);
    }
    
    //Puxando métodos da superclasse
    @Override
    public void Imprimir(){
        System.out.println("O nome do Animal e: "+ getNome() + " e");
        System.out.println(" ele esta se movendo com "+ getPatas() + " asas e");
        System.out.println(" esta comendo "+ getComida());
    }
    
    @Override
    public void Mover(){
        System.out.println("Voando com " + getPatas() + " asas");
    }
    
    @Override
    public void Comer(){
        System.out.println("Comendo: " + getComida());
    }
}
