
public class Main {

    public static void main(String[] args) {

        Biblioteca biblioteca = new Biblioteca();

        Livro livro1 = new Livro("L001", "Dom Casmurro");
        Livro livro2 = new Livro("L002", "O Pequeno Principe");

        Revista revista1 = new Revista("R001", "National Geographic");
        Revista revista2 = new Revista("R002", "Ciencia Hoje");
        biblioteca.cadastrarItem(revista2);
        Aluno aluno = new Aluno("Ana");
        Professor professor = new Professor("Carlos");

        biblioteca.cadastrarItem(livro1);
        biblioteca.cadastrarItem(livro2);
        biblioteca.cadastrarItem(revista1);

        biblioteca.cadastrarUsuario(aluno);
        biblioteca.cadastrarUsuario(professor);

        biblioteca.emprestar(livro1, aluno);
        biblioteca.emprestar(livro2, aluno);
        biblioteca.emprestar(revista1, aluno);

// Tentativa do quarto emprestimo
        biblioteca.emprestar(revista2, aluno);
        biblioteca.devolver(livro1, aluno);
        biblioteca.listarAcervo();
    }
}
