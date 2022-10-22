package lista3;

/*
 * @author Klayvert
*/

public class Animal 
{
    //Atributos
    private int patas;
    private String nome;
    private String comida;
    
    //Consturtor
    public Animal(int patas, String nome, String comida){
        this.patas = patas;
        this.nome = nome;
        this.comida = comida;
    }
    
    //Métodos
    public void Imprimir(){
        System.out.println("O nome do Animal é: ");
    }
    
    public void Mover(){
        System.out.println("Movendo!!!");
    }
    
    public void Comer(){
        System.out.println("Comendo");
    }
    
    
    public static void main(String[] args) 
    {
        //Instanciando objetos
        Animal a;
        
        
        a = new Ave(2, "Bem-Te-Vi", "minhoca");
        a.Imprimir();
        
        a = new Cachorro(4, "Adalberto Gomez", "ração");
        a.Imprimir();
    }
    
    //Manipulação de dados com getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPatas() {
        return patas;
    }

    public void setPatas(int patas) {
        this.patas = patas;
    }
    
    public String getComida() {
        return comida;
    }

    public void setComida(String comida) {
        this.comida = comida;
    }
}

