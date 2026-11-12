
-- EXERCICIO 3: CONSULTAS SQL

-- LISTAR TODO O ACERVO
SELECT
    codigo,
    titulo,
    tipo,
    disponivel
FROM item;

--  LISTAR EMPRESTIMOS EM ABERTO
SELECT
    u.nome AS usuario,
    i.titulo AS item,
    e.data_retirada,
    e.data_devolucao_prevista
FROM emprestimo e
JOIN usuario u ON e.usuario_id = u.id
JOIN item i ON e.item_id = i.id
WHERE e.data_devolucao IS NULL;

-- CALCULAR O TOTAL DE MULTAS POR USUARIO
SELECT
    u.nome AS usuario,
    SUM(e.valor_multa) AS total_multa
FROM usuario u
JOIN emprestimo e ON u.id = e.usuario_id
GROUP BY u.id, u.nome;

--  LISTAR ITENS QUE NUNCA FORAM EMPRESTADOS
SELECT
    i.codigo,
    i.titulo,
    i.tipo,
    i.disponivel
FROM item i
LEFT JOIN emprestimo e ON i.id = e.item_id
WHERE e.item_id IS NULL;

