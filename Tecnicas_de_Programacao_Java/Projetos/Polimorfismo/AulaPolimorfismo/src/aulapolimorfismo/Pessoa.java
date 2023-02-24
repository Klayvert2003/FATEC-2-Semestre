package aulapolimorfismo;

/*
 * @author Klayvert
*/

public abstract class Pessoa implements MinhaInterface{
    
    public abstract void Imprimir();

    @Override
    public void imcH() {
        System.out.println("imc humano");
    }

    @Override
    public void imcA() {
        System.out.println("imc humano");
    }

}
