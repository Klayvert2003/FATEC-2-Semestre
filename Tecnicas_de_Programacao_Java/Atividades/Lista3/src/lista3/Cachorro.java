package lista3;

/*
 * @author Klayvert
*/

//Herdando da classe Animal
public class Cachorro extends Animal{
    
    //Construtor para ser usado na Classe Animal
    public Cachorro(int patas, String nome, String comida){
        super(patas, nome, comida);
}
    //Puxando métodos da superclasse
    @Override
    public void Imprimir(){
        System.out.println("O nome do Animal e: " +getNome() + ", ele");
        System.out.println(" esta se movendo com " + getPatas() + " patas");
        System.out.println(" esta comendo "+ getComida());
    }
    
    @Override
    public void Mover(){
        System.out.println("Movendo com " + getPatas() + " patas");
    }
    
    @Override
    public void Comer(){
        System.out.println("Comendo: " + getComida());
    }
}
