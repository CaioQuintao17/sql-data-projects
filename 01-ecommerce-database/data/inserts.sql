INSERT INTO categorias (nome)
VALUES
('Smartphones'),
('Notebooks'),
('Periféricos'),
('Monitores');

INSERT INTO produtos (nome, preco, estoque, id_categoria)
VALUES
('Notebook Dell Inspiron', 3499.90, 15, 2),
('Notebook Lenovo IdeaPad', 2899.90, 20, 2),
('iPhone 15', 4299.90, 10, 1),
('Samsung Galaxy S24', 3199.90, 12, 1),
('Mouse Logitech G203', 149.90, 50, 3),
('Teclado Mecânico Redragon', 249.90, 35, 3),
('Monitor LG 24"', 899.90, 18, 4),
('Monitor Samsung 27"', 1299.90, 10, 4);

INSERT INTO clientes (nome, email, cidade, estado, data_cadastro)
VALUES
('João Silva', 'joao@email.com', 'Brasília', 'DF', '2026-08-01'),
('Maria Oliveira', 'maria@email.com', 'Goiânia', 'GO', '2026-08-02'),
('Carlos Santos', 'carlos@email.com', 'São Paulo', 'SP', '2026-08-03'),
('Ana Costa', 'ana@email.com', 'Belo Horizonte', 'MG', '2026-08-04'),
('Pedro Souza', 'pedro@email.com', 'Curitiba', 'PR', '2026-08-05'),
('Juliana Alves', 'juliana@email.com', 'Brasília', 'DF', '2026-08-06');
