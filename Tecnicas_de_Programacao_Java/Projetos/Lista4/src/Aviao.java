public class Aviao extends Aereos{

    public Aviao(int turbinas, int assentos) {
        super(turbinas, assentos);
    }

    @Override
    public void mover() {
        super.mover();
        System.out.println("Aviao");
    }
    
    @Override
    public void abastecer() {
        super.abastecer();
        System.out.println("Aviao");
    }

    @Override
    public int getTurbinas() {
        return super.getTurbinas();
    }

    @Override
    public void setTurbinas(int turbinas) {
        super.setTurbinas(turbinas);
    }

    @Override
    public int getAssentos() {
        return super.getAssentos();
    }

    @Override
    public void setAssentos(int assentos) {
        super.setAssentos(assentos);
    }
}
