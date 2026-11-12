
public class Main {

    public static void main(String[] args) {

        Biblioteca biblioteca = new Biblioteca();

        Livro livro1 = new Livro("L001", "Dom Casmurro");
        Livro livro2 = new Livro("L002", "O Pequeno Principe");

        Revista revista1 = new Revista("R001", "National Geographic");
        Revista revista2 = new Revista("R002", "Ciencia Hoje");

        DVD dvd1 = new DVD("D001", "Interestelar");

        Aluno aluno = new Aluno("Lia");
        Professor professor = new Professor("Carlos");

        biblioteca.cadastrarItem(revista2);
        biblioteca.cadastrarItem(livro1);
        biblioteca.cadastrarItem(livro2);
        biblioteca.cadastrarItem(dvd1);
        biblioteca.cadastrarItem(revista1);

        biblioteca.cadastrarUsuario(aluno);
        biblioteca.cadastrarUsuario(professor);

        biblioteca.emprestar(livro1, aluno);
        biblioteca.emprestar(livro2, aluno);
        biblioteca.emprestar(revista1, aluno);
        biblioteca.emprestar(revista2, aluno);

        biblioteca.devolver(livro1, professor);

        biblioteca.devolver(livro1, aluno);

        biblioteca.listarAcervo();
    }
}
