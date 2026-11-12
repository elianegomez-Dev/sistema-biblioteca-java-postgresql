
-- EXERCICIO 2: MODELAGEM DO BANCO DE DADOS

-- TABELA ITEM
CREATE TABLE item (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    tipo VARCHAR(20) NOT NULL
        CHECK (tipo IN ('Livro', 'Revista')),
    autor VARCHAR(100),
    edicao VARCHAR(50),
    disponivel BOOLEAN NOT NULL DEFAULT TRUE
);

-- TABELA USUARIO
CREATE TABLE usuario (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL
        CHECK (tipo IN ('Aluno', 'Professor')),
    limite_itens INTEGER NOT NULL
);

-- TABELA EMPRESTIMO
CREATE TABLE emprestimo (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id INTEGER NOT NULL REFERENCES item(id),
    usuario_id INTEGER NOT NULL REFERENCES usuario(id),
    data_retirada DATE NOT NULL,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao DATE,
    valor_multa NUMERIC(10,2) DEFAULT 0.00
);
