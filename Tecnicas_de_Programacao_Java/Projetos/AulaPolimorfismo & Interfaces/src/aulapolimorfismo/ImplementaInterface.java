package aulapolimorfismo;

/*
 * @author Klayvert
*/

public class ImplementaInterface implements MinhaInterface {

    @Override
    public void imcH() {
    System.out.println("IMC Pessoa");
    }

    @Override
    public void imcA() {
        System.out.println("IMC Animal");
    }
    
}
