CREATE DATABASE banco_cooperativa;
USE banco_cooperativa;

-- Tabela de clientes (cooperados)
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    cidade VARCHAR(100),
    data_cadastro DATE NOT NULL
);

-- Tabela de contas bancárias, ligada aos clientes
CREATE TABLE contas (
    id_conta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    tipo_conta VARCHAR(30) NOT NULL,
    data_abertura DATE NOT NULL,
    saldo DECIMAL(10,2) NOT NULL
);

-- Tabela de transações financeiras
CREATE TABLE transacoes (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_conta INT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_transacao DATE NOT NULL
);

-- Foreign Keys
ALTER TABLE contas
ADD CONSTRAINT fk_conta_cliente
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE transacoes
ADD CONSTRAINT fk_transacao_conta
FOREIGN KEY (id_conta) REFERENCES contas(id_conta);
