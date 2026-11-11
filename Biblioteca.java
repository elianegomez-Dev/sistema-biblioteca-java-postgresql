
public class Biblioteca {

    private ItemBiblioteca[] acervo;
    private Usuario[] usuarios;

    private int quantidadeItens;
    private int quantidadeUsuarios;

    public Biblioteca() {
        acervo = new ItemBiblioteca[10];
        usuarios = new Usuario[10];

        quantidadeItens = 0;
        quantidadeUsuarios = 0;
    }

    public void emprestar(ItemBiblioteca item, Usuario usuario) {

        if (item.isDisponivel() == false) {
            System.out.println("Item indisponivel!");
            return;
        }

        if (usuario.getQuantidadeEmprestada() >= usuario.getLimiteItens()) {
            System.out.println("Usuario atingiu o limite de emprestimos!");
            return;
        }

        item.registrarEmprestimo();
        usuario.adicionarEmprestimo();

        System.out.println("Emprestimo realizado com sucesso!");
    }

    public void devolver(ItemBiblioteca item, Usuario usuario) {

        if (item.isDisponivel() == true) {
            System.out.println("Este item ja esta disponivel!");
            return;
        }

        item.registrarDevolucao();
        usuario.removerEmprestimo();

        System.out.println("Devolucao realizada com sucesso!");
    }

    public void cadastrarItem(ItemBiblioteca item) {

        if (quantidadeItens < acervo.length) {
            acervo[quantidadeItens] = item;
            quantidadeItens++;

            System.out.println("Item cadastrado: " + item.getTitulo());

        } else {
            System.out.println("Acervo cheio!");
        }
    }

    public void cadastrarUsuario(Usuario usuario) {

        if (quantidadeUsuarios < usuarios.length) {
            usuarios[quantidadeUsuarios] = usuario;
            quantidadeUsuarios++;

            System.out.println("Usuario cadastrado: " + usuario.getNome());

        } else {
            System.out.println("Limite de usuarios atingido!");
        }
    }

    public void listarAcervo() {

        System.out.println("\n===== ACERVO DA BIBLIOTECA =====");

        for (int i = 0; i < quantidadeItens; i++) {

            System.out.println("Codigo: " + acervo[i].getCodigo());
            System.out.println("Titulo: " + acervo[i].getTitulo());

            if (acervo[i].isDisponivel() == true) {
                System.out.println("Disponibilidade: Disponivel");
            } else {
                System.out.println("Disponibilidade: Emprestado");
            }

            System.out.println("-----------------------------");
        }
    }
}
