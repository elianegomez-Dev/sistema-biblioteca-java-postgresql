# 📚 Sistema de Gerenciamento de Biblioteca

Sistema de gerenciamento de biblioteca desenvolvido em Java, com aplicação de conceitos de Programação Orientada a Objetos (POO). O projeto tem como objetivo organizar o cadastro de itens, usuários, empréstimos e devoluções.

## 🎯 Objetivo do projeto

Desenvolver um sistema simples de biblioteca, aplicando conceitos fundamentais de Java e, posteriormente, integração com banco de dados PostgreSQL.

## 🛠️ Tecnologias

- Java 17
- Programação Orientada a Objetos (POO)
- PostgreSQL *(etapa de desenvolvimento)*

## ✨ Funcionalidades

- Cadastro de livros e revistas.
- Cadastro de alunos e professores.
- Realização de empréstimos.
- Controle de disponibilidade dos itens.
- Limite de empréstimos por categoria de usuário.
- Devolução de itens.
- Listagem do acervo da biblioteca.

## 📋 Regras de negócio

| Categoria | Prazo | Multa diária |
|---|---:|---:|
| Livro | 14 dias | R$ 0,50 |
| Revista | 7 dias | R$ 1,00 |

| Usuário | Limite de empréstimos |
|---|---:|
| Aluno | 3 itens |
| Professor | 5 itens |

## 📂 Estrutura do projeto

- `Main.java` — execução e testes do sistema.
- `Biblioteca.java` — gerenciamento do acervo e dos empréstimos.
- `ItemBiblioteca.java` — classe abstrata dos itens.
- `Livro.java` — representação dos livros.
- `Revista.java` — representação das revistas.
- `Usuario.java` — classe abstrata dos usuários.
- `Aluno.java` — representação dos alunos.
- `Professor.java` — representação dos professores.

## ▶️ Como executar

É necessário ter o JDK 17 ou superior instalado.

No terminal, dentro da pasta do projeto, execute:

```bash
javac *.java
java Main
```

## 🖥️ Demonstração do projeto

<img width="1357" height="712" alt="execucao-java" src="https://github.com/user-attachments/assets/0f89057b-6b5f-4d48-9573-a997d634bed8" />

*Capturas de tela do sistema em execução serão adicionadas nesta seção.*


## Banco de Dados PostgreSQL

O projeto utiliza PostgreSQL para armazenar os dados da biblioteca.

Foram criadas três tabelas:

- **item:** armazena livros e revistas.
- **usuario:** armazena alunos e professores.
- **emprestimo:** registra os empréstimos e as devoluções.

### Consultas SQL

O projeto possui consultas para:

- Listar o catálogo da biblioteca.
- Consultar empréstimos em aberto.
- Calcular o total de multas por usuário.
- Identificar itens que nunca foram emprestados.

Os scripts SQL estão disponíveis na pasta `sql`:

- `01_criacao_tabelas.sql`
- `02_dados_iniciais.sql`
- `03_consultas.sql`
  

## 📚 Aprendizados

Durante o desenvolvimento deste projeto, estou praticando:

- Classes e objetos.
- Encapsulamento.
- Construtores.
- Herança.
- Classes abstratas.
- Polimorfismo.
- Arrays.
- Regras de negócio.
- Banco de dados relacional e SQL.

---

**Projeto desenvolvido como atividade prática de aprendizagem em desenvolvimento de software.**
