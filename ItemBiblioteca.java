
public abstract class ItemBiblioteca {

    private String codigo;
    private String titulo;
    private boolean disponivel;

    public ItemBiblioteca(String codigo, String titulo) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.disponivel = true;
    }

    public String getCodigo() {
        return codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public boolean isDisponivel() {
        return disponivel;
    }

    void registrarEmprestimo() {
        disponivel = false;
    }

    void registrarDevolucao() {
        disponivel = true;
    }

    public abstract int getPrazoDevolucao();

    public abstract double getMultaDiaria(); 
}
