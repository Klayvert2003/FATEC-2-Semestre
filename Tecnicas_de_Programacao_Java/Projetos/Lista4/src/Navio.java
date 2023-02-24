public class Navio extends Aquaticos{

    public Navio(int tamanho, int botes) {
        super(tamanho, botes);
    }

    @Override
    public void mover() {
        super.mover();
        System.out.println("Navio");
    }
    
    @Override
    public void abastecer() {
        super.abastecer();
        System.out.println("Navio");
    }
    
    @Override
    public int getTamanho() {
        return super.getTamanho();
    }

    @Override
    public void setTamanho(int tamanho) {
        super.setTamanho(tamanho);
    }

    @Override
    public int getBotes() {
        return super.getBotes();
    }

    @Override
    public void setBotes(int botes) {
        super.setBotes(botes);
    }
}
