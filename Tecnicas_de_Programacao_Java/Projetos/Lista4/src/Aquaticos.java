public class Aquaticos implements Veiculos{

    private int tamanho;
    
    private int botes;

    public Aquaticos(int tamanho, int botes) {
        this.tamanho = tamanho;
        this.botes = botes;
    }

    @Override
    public void mover() {
        System.out.print("Veiculo Aquatico movido: ");   
    }

    @Override
    public void abastecer() {
        System.out.print("Veiculo Aquatico abastecido: ");
    
    }

    public int getTamanho() {
        return tamanho;
    }

    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    public int getBotes() {
        return botes;
    }

    public void setBotes(int botes) {
        this.botes = botes;
    }
}
