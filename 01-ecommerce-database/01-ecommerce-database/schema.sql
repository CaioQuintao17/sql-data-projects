CREATE DATABASE eccomerce_db;
USE eccomerce_db;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    cidade VARCHAR(100),
    estado CHAR(2),
    data_cadastro DATE NOT NULL
);

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_client INT NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(30) NOT NULL
);

CREATE TABLE itens_pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
);

-- Foreign Keys (criadas depois de TODAS as tabelas existirem)
ALTER TABLE pedidos
ADD CONSTRAINT fk_pedido_cliente
FOREIGN KEY (id_client) REFERENCES clientes(id_cliente);

ALTER TABLE produtos
ADD CONSTRAINT fk_produto_categoria
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria);

ALTER TABLE itens_pedido
ADD CONSTRAINT fk_item_pedido
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido);

ALTER TABLE itens_pedido
ADD CONSTRAINT fk_item_produto
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto);
