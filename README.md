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

*Capturas de tela do sistema em execução serão adicionadas nesta seção.*

## 🗄️ Banco de dados

A etapa de desenvolvimento com PostgreSQL incluirá:

- Criação das tabelas `item`, `usuario` e `emprestimo`.
- Relacionamentos e chaves estrangeiras.
- Inserção de dados.
- Consultas SQL para relatórios e controle de empréstimos.

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
