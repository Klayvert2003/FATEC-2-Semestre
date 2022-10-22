package javaapplication12;

/*
 * @author Klayvert
 */
public class Carro extends Veiculo
{
    private int portas;
    private int airbag;
    
    public Carro(int motor, int rodas, String cor, int portas, int airbag)        
    {
        super(motor, rodas, cor); //acessa o construtor da SUPER CLASSE vulgo Veículo
        this.portas = portas;
        this.airbag = airbag;
    }
    
    public void setPortas(int portas)
    {
        this.portas = portas;
    }
    
    public void setAirbag(int airbag)
    {
        this.airbag = airbag;
    }
    
    public int getPortas()
    {
        return portas;
    }
    
    public int getAirbag()
    {
        return airbag;
    }
    
    
    @Override
    public void Imprimir()
    {
        super.Imprimir(); //imprime todos os atributos de veículo
        System.out.println("Portas: " + portas);
        System.out.println("Airbag: " + airbag);
    }
}
