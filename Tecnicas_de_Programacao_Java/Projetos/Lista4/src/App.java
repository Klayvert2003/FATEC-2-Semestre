public class App {
    public static void main(String[] args) throws Exception {
        Terrestres c;
        Aquaticos n;
        Aereos a;
        int at1, at2;


        c = new Carro(4, 4);
        at1 = c.getRodas();
        at2 = c.getPortas();

        c.mover();
        c.abastecer();
        System.out.println("Rodas: "+at1);
        System.out.println("Portas: "+at2);

        System.out.println();

        n = new Navio(200, 6);
        at1 = n.getTamanho();
        at2 = n.getBotes();

        n.mover();
        n.abastecer();
        System.out.println("Tamanho: "+at1);
        System.out.println("Botes: "+at2);

        System.out.println();

        a = new Aviao(2, 60);
        at1 = a.getTurbinas();
        at2 = a.getAssentos();

        a.mover();
        a.abastecer();
        System.out.println("Turbinas: "+at1);
        System.out.println("Assentos: "+at2);
        
    }
}
