-- Faturamento total por pedido
SELECT
    id_pedido,
    SUM(quantidade * preco_unitario) AS faturamento_pedido
FROM itens_pedido
GROUP BY id_pedido
ORDER BY faturamento_pedido DESC;

-- Ticket médio geral (faturamento médio por pedido)
SELECT AVG(faturamento_pedido) AS ticket_medio
FROM (
    SELECT id_pedido, SUM(quantidade * preco_unitario) AS faturamento_pedido
    FROM itens_pedido
    GROUP BY id_pedido
) AS sub;
