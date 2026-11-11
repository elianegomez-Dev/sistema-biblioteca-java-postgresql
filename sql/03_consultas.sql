
-- LISTAR O CATALOGO
SELECT *
FROM item;


--  EMPRESTIMOS EM ABERTO
SELECT
  u.nome AS usuario,
  i.titulo AS item,
  e.data_emprestimo
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN item i ON e.id_item = i.id_item
WHERE e.data_devolucao IS NULL;


-- TOTAL DE MULTAS POR USUARIO
SELECT
    u.nome AS usuario,
    SUM(
        GREATEST(
            COALESCE(e.data_devolucao, CURRENT_DATE)
            - (e.data_emprestimo +
                CASE
             WHEN i.tipo = 'Livro' THEN 14
             WHEN i.tipo = 'Revista' THEN 7
                END
            ),
            0
        ) *
        CASE
            WHEN i.tipo = 'Livro' THEN 0.50
            WHEN i.tipo = 'Revista' THEN 1.00
        END
    ) AS total_multa
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN item i ON e.id_item = i.id_item
GROUP BY u.id_usuario, u.nome;


-- ITENS NUNCA EMPRESTADOS
SELECT
  i.codigo,
  i.titulo,
  i.tipo
FROM item i
LEFT JOIN emprestimo e ON i.id_item = e.id_item
WHERE e.id_item IS NULL;
