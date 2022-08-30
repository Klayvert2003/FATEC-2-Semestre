
public class Data {
    int dia;
    int mes;
    int ano;

    public String formatada() {

        String diaFormatado = String.valueOf(this.dia);
        String mesFormatado = String.valueOf(this.mes);;
        String anoFormatado = String.valueOf(this.ano);;

        if (this.dia < 10) {
            diaFormatado = "0" + this.dia;
        }
        if (this.mes < 10) {
            mesFormatado = "0" + this.mes;
        }
        if (this.ano < 10) {
            anoFormatado = "0" + this.ano;
        }
        return diaFormatado + "/" + mesFormatado + "/" + anoFormatado;
    }
}
