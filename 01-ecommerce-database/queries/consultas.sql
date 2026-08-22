-- Lista nome e preço de todos os produtos
SELECT nome, preco FROM produtos;

-- Detalhe completo: cliente, pedido, produto e quantidade
SELECT
    clientes.nome AS cliente,
    pedidos.id_pedido AS pedido,
    produtos.nome AS produto,
    itens_pedido.quantidade,
    itens_pedido.preco_unitario
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_client
INNER JOIN itens_pedido ON pedidos.id_pedido = itens_pedido.id_pedido
INNER JOIN produtos ON itens_pedido.id_produto = produtos.id_produto;

-- 5 produtos mais baratos
SELECT preco, nome FROM produtos
ORDER BY preco ASC
LIMIT 5;

-- Estatísticas gerais de produtos
SELECT
    COUNT(*) AS quantidade_produtos,
    SUM(estoque) AS estoque_total,
    AVG(preco) AS preco_medio,
    MAX(preco) AS maior_preco,
    MIN(preco) AS menor_preco
FROM produtos;
