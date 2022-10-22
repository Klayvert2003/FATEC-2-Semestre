package aulapolimorfismo;

/*
 * @author Klayvert
*/

public class ExtendsAbstract extends MinhaClasseAbstrata{
    
    //Para chamar as funções da classe abstrata é necessário sempre colocar TODAS as funções novamente na classe concreta só que agora com suas funcionalidades.
    
    
    @Override
    public void Texto1() {
        System.out.println("Hello World!!!");
    }

    @Override
    public int Texto2() {
        return 2;
    }

    @Override
    public void Texto3() {
        System.out.println("World Hello!!!");
    }
    
    /*
    public static void main(String[] args) 
    {
        ExtendsAbstract e = new ExtendsAbstract();
        e.Texto1();
        e.Texto2();
        e.Texto3();
    }
*/
}
