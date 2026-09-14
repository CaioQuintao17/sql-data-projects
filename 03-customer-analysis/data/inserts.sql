-- Clientes (cooperados)
INSERT INTO clientes (nome, email, cidade, data_cadastro)
VALUES
('João Silva', 'joao@email.com', 'Brasília', '2025-01-10'),
('Maria Oliveira', 'maria@email.com', 'Goiânia', '2025-02-15'),
('Carlos Santos', 'carlos@email.com', 'São Paulo', '2025-03-20'),
('Ana Costa', 'ana@email.com', 'Belo Horizonte', '2025-04-05');

-- Contas (só João e Maria têm conta aberta, propositalmente,
-- pra permitir a análise de "clientes sem conta" no LEFT JOIN)
INSERT INTO contas (id_cliente, tipo_conta, data_abertura, saldo)
VALUES
(1, 'corrente', '2025-01-15', 1500.00),
(2, 'corrente', '2025-02-14', 2500.00);

-- Transações
INSERT INTO transacoes (id_conta, tipo, valor, data_transacao)
VALUES
(1, 'deposito', 500.00, '2025-03-01'),
(1, 'saque', 100.00, '2025-03-05'),
(1, 'pix', 80.00, '2025-03-10'),
(2, 'deposito', 1000.00, '2025-03-02'),
(2, 'pix', 250.00, '2025-03-08'),
(2, 'transferencia', 300.00, '2025-03-12');
