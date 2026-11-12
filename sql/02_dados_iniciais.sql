
-- EXERCICIO 2: DADOS INICIAIS

-- CADASTRO DE ITENS
INSERT INTO item
(codigo, titulo, tipo, autor, edicao, disponivel)
VALUES
('L001', 'Dom Casmurro', 'Livro', 'Machado de Assis', NULL, FALSE),
('L002', 'O Pequeno Principe', 'Livro', 'Antoine de Saint-Exupery', NULL, TRUE),
('R001', 'National Geographic', 'Revista', NULL, 'Edicao 2026', TRUE),
('R002', 'Ciencia Hoje', 'Revista', NULL, 'Edicao 2026', TRUE);

-- CADASTRO DE USUARIOS
INSERT INTO usuario (nome, tipo, limite_itens)
VALUES
('Ana', 'Aluno', 3),
('Carlos', 'Professor', 5);

-- EMPRESTIMO EM ABERTO
INSERT INTO emprestimo
(item_id, usuario_id, data_retirada,
 data_devolucao_prevista, data_devolucao, valor_multa)
VALUES
(
    (SELECT id FROM item WHERE codigo = 'L001'),
    (SELECT id FROM usuario WHERE nome = 'Ana'),
    CURRENT_DATE - 20,
    CURRENT_DATE - 6,
    NULL,
    3.00
);

-- EMPRESTIMO JA DEVOLVIDO
INSERT INTO emprestimo
(item_id, usuario_id, data_retirada,
 data_devolucao_prevista, data_devolucao, valor_multa)
VALUES
(
    (SELECT id FROM item WHERE codigo = 'L002'),
    (SELECT id FROM usuario WHERE nome = 'Carlos'),
    CURRENT_DATE - 20,
    CURRENT_DATE - 6,
    CURRENT_DATE - 1,
    2.50
);

