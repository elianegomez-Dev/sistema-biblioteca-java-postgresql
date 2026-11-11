
-- DADOS INICIAIS DO SISTEMA DE BIBLIOTECA

-- CADASTRO DOS ITENS
INSERT INTO item (codigo, titulo, tipo, disponivel)
VALUES
('L001', 'Dom Casmurro', 'Livro', FALSE),
('L002', 'O Pequeno Principe', 'Livro', TRUE),
('R001', 'National Geographic', 'Revista', TRUE),
('R002', 'Ciencia Hoje', 'Revista', TRUE);

-- CADASTRO DOS USUARIOS
INSERT INTO usuario (nome, tipo)
VALUES
('Ana', 'Aluno'),
('Carlos', 'Professor');

-- EMPRESTIMO EM ABERTO
INSERT INTO emprestimo
(id_item, id_usuario, data_emprestimo, data_devolucao)
VALUES
(
    (SELECT id_item FROM item WHERE codigo = 'L001'),
    (SELECT id_usuario FROM usuario WHERE nome = 'Ana'),
    CURRENT_DATE - 20,
    NULL
);

-- EMPRESTIMO DEVOLVIDO

INSERT INTO emprestimo
(id_item, id_usuario, data_emprestimo, data_devolucao)
VALUES
(
    (SELECT id_item FROM item WHERE codigo = 'L002'),
    (SELECT id_usuario FROM usuario WHERE nome = 'Carlos'),
    CURRENT_DATE - 20,
    CURRENT_DATE - 1
);
