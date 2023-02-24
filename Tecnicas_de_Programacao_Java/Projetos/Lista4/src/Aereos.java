public class Aereos implements Veiculos{

    private int turbinas;

    private int assentos;

    public Aereos(int turbinas, int assentos) {
        this.turbinas = turbinas;
        this.assentos = assentos;
    }

    @Override
    public void mover() {
        System.out.print("Veiculo Aquatico movido: ");   
    }

    @Override
    public void abastecer() {
        System.out.print("Veiculo Aquatico abastecido: ");
    }

    public int getTurbinas() {
        return turbinas;
    }

    public void setTurbinas(int turbinas) {
        this.turbinas = turbinas;
    }

    public int getAssentos() {
        return assentos;
    }

    public void setAssentos(int assentos) {
        this.assentos = assentos;
    }
}
