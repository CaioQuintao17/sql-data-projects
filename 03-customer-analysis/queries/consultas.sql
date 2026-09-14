-- ===============================
-- AGREGAÇÕES
-- ===============================

-- Saldo total em contas
SELECT SUM(saldo) AS saldo_total
FROM contas;

-- Total movimentado por tipo de transação
SELECT
    tipo,
    SUM(valor) AS total_movimentado,
    COUNT(*) AS quantidade_transacoes
FROM transacoes
GROUP BY tipo
ORDER BY total_movimentado DESC;

-- Saldo médio por tipo de conta
SELECT
    tipo_conta,
    AVG(saldo) AS saldo_medio
FROM contas
GROUP BY tipo_conta;

-- ===============================
-- JOINS
-- ===============================

-- Visão completa: cliente + conta + transação
SELECT
    clientes.nome AS cliente,
    contas.tipo_conta,
    contas.saldo,
    transacoes.tipo AS tipo_transacao,
    transacoes.valor,
    transacoes.data_transacao
FROM clientes
INNER JOIN contas ON clientes.id_cliente = contas.id_cliente
INNER JOIN transacoes ON contas.id_conta = transacoes.id_conta
ORDER BY transacoes.data_transacao;

-- Clientes que ainda não têm conta aberta
SELECT clientes.nome
FROM clientes
LEFT JOIN contas ON clientes.id_cliente = contas.id_cliente
WHERE contas.id_conta IS NULL;

-- ===============================
-- ANÁLISE DE NEGÓCIO
-- ===============================

-- Clientes mais ativos financeiramente (maior movimentação)
SELECT
    clientes.nome AS cliente,
    SUM(transacoes.valor) AS total_movimentado
FROM clientes
INNER JOIN contas ON clientes.id_cliente = contas.id_cliente
INNER JOIN transacoes ON contas.id_conta = transacoes.id_conta
GROUP BY clientes.nome
ORDER BY total_movimentado DESC;

-- Tipo de transação mais comum
SELECT
    tipo,
    COUNT(*) AS quantidade
FROM transacoes
GROUP BY tipo
ORDER BY quantidade DESC;

-- Conta com maior saldo
SELECT *
FROM contas
ORDER BY saldo DESC
LIMIT 1;
