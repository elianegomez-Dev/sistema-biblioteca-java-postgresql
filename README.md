# Sistema de Gerenciamento de Biblioteca


Sistema de gerenciamento de biblioteca desenvolvido em Java, utilizando conceitos de Programação Orientada a Objetos (POO) e banco de dados PostgreSQL.


## 🎯 Objetivo do projeto

Desenvolver um sistema simples de biblioteca para gerenciar itens, usuários, empréstimos e devoluções, aplicando conceitos de programação e banco de dados.


## 🛠️ Tecnologias utilizadas

- Java 17
- Programação Orientada a Objetos (POO)
- PostgreSQL
- SQL


## ✨ Funcionalidades

- Cadastro de livros, revistas e DVDs.
- Cadastro de alunos e professores.
- Realização de empréstimos.
- Controle de disponibilidade dos itens.
- Limite de empréstimos por tipo de usuário.
- Controle de devoluções.
- Verificação do usuário responsável pelo empréstimo.
- Listagem do acervo da biblioteca.
- Armazenamento e consulta de dados no PostgreSQL.


## 📋 Regras de negócio


| Categoria | Prazo | Multa diária |
|---|---|---|
| Livro | 14 dias | R$ 0,50 |
| Revista | 7 dias | R$ 1,00 |
| DVD | 3 dias | R$ 2,00 |

### Limite de empréstimos

| Usuário | Limite de empréstimos |
|---|---:|
| Aluno | 3 itens |
| Professor | 5 itens |




## 📂 Estrutura do projeto


### Arquivos Java

- `Main.java` — execução e testes do sistema.
- `Biblioteca.java` — gerenciamento do acervo e dos empréstimos.
- `ItemBiblioteca.java` — classe abstrata dos itens.
- `Livro.java` — representação dos livros.
- `Revista.java` — representação das revistas.
- `Usuario.java` — classe abstrata dos usuários.
- `Aluno.java` — representação dos alunos.
- `Professor.java` — representação dos professores.
-  `DVD.java` — representação dos DVDs.

### Arquivos SQL

- `01_criacao_tabelas.sql` — criação das tabelas e relacionamentos.
- `02_dados_iniciais.sql` — inserção dos dados iniciais.
- `03_consultas.sql` — consultas para visualizar e analisar os dados.

## ▶️ Como executar o projeto Java

É necessário ter o JDK 17 ou superior instalado.

No terminal, dentro da pasta do projeto, execute os comandos separadamente:

```powershell
javac *.java
java Main
```

## 🖥️ Demonstração do projeto - java


<p align="center">
  <img <img width="1357" height="550" alt="image" src="https://github.com/user-attachments/assets/cba4e92c-8922-4486-8432-258aedd34df5" >
</p>
imagem do VS Code com o programa executando.

## 🐘 Banco de dados PostgreSQL


O banco de dados `biblioteca_db` utiliza três tabelas:

- **item:** armazena livros e revistas, incluindo código, título, tipo, autor, edição e disponibilidade.
- **usuario:** armazena alunos e professores, incluindo seus limites de empréstimos.
- **emprestimo:** registra os itens emprestados, os usuários, as datas de retirada e devolução prevista, a devolução efetiva e as multas.

As tabelas utilizam chaves primárias, chaves estrangeiras e restrições para manter a integridade dos dados.

## 🔎 Consultas SQL

Foram desenvolvidas consultas para:

1. Listar o acervo da biblioteca.
2. Consultar empréstimos em aberto, mostrando o usuário e o item.
3. Calcular o total de multas por usuário.
4. Identificar itens que nunca foram emprestados.

Os scripts SQL estão disponíveis na pasta `sql`.


## 🖥️ Demonstração do projeto -  banco de dados PostgreSQL

<p align="center">
  <img width="1352" height="500" alt="Captura de tela 2026-21" src="https://github.com/user-attachments/assets/a561aa1e-5d41-4672-90ee-5713916f07ad">
</p>
 imagem do pgAdmin com as três tabelas e o resultado da consulta.

## 📚 Aprendizados

Durante o desenvolvimento deste projeto, foram praticados:

- Classes e objetos.
- Encapsulamento.
- Construtores.
- Herança.
- Classes abstratas.
- Polimorfismo.
- Arrays.
- Regras de negócio.
- Banco de dados relacional.
- Criação de tabelas e relacionamentos.
- Consultas SQL com JOIN, GROUP BY e funções de agregação.



