public class Carro extends Terrestres{

    public Carro(int rodas, int portas) {
        super(rodas,portas);
    }

    @Override
    public void mover() {
        super.mover();
        System.out.println("Carro");
    }
    
    @Override
    public void abastecer() {
        super.abastecer();
        System.out.println("Carro");
    }

    @Override
    public int getRodas() {
        return super.getRodas();
    }

    @Override
    public void setRodas(int rodas) {
        super.setRodas(rodas);
    }

    @Override
    public int getPortas() {
        return super.getPortas();
    }

    @Override
    public void setPortas(int portas) {
        super.setPortas(portas);
    }
}
