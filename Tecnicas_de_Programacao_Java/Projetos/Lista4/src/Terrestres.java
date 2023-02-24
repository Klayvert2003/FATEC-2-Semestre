public class Terrestres implements Veiculos{

    private int rodas;

    private int portas;

    public Terrestres(int rodas, int portas) {
        this.rodas = rodas;
        this.portas = portas;
    }

    @Override
    public void mover() {
        System.out.print("Veiculo Terrestre movido: ");  
    }

    @Override
    public void abastecer() {
        System.out.print("Veiculo Terrestre abastecido: ");      
    }

    public int getRodas() {
        return rodas;
    }

    public void setRodas(int rodas) {
        this.rodas = rodas;
    }

    public int getPortas() {
        return portas;
    }

    public void setPortas(int portas) {
        this.portas = portas;
    }
    
}
