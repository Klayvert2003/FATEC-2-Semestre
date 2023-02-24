package aulapolimorfismo;

/*
 * @author Klayvert
*/

public class Animal 
{
    //Atributos
    private int tamanho;
    private String nome;
    
    public Animal(int tamanho, String nome){
        this.nome = nome;
        this.tamanho = tamanho;
    }
    
    public void ImprimeNome(){
        System.out.println("O nome do Animal é: ");
    }
    
    public void ImprimeTamanho(){
        System.out.println("O tamanho do animal é: ");
    }
    
    public void Mover(){
        System.out.println("Movendo!!!");
    }
    
    public void Alimentacao(){
        System.out.println("Comendo");
    }
    
    public static void main(String[] args) 
    {
        Animal a;
        
        
        a = new Peixe(50, "Nemo");
        a.ImprimeNome();
        a.Mover();
        a.ImprimeTamanho();
        a.Alimentacao();
        
        a = new Sapo(10, "Kururu");
        a.ImprimeNome();
        a.Mover();
        a.ImprimeTamanho();
        a.Alimentacao();
        
        a = new Ave(5, "Bem te Vi");
        a.ImprimeNome();
        a.Mover();
        a.ImprimeTamanho();
        a.Alimentacao();
    }

    public int getTamanho() {
        return tamanho;
    }

    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}
