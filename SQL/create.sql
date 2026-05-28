CREATE DATABASE loja_photocards;

USE loja_photocards;

CREATE TABLE clientes(
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE,
 telefone VARCHAR(20)
);

CREATE TABLE categorias(
 id_categoria INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 descricao VARCHAR(200)
);

CREATE TABLE photocards(
 id_photocard INT PRIMARY KEY AUTO_INCREMENT,
 id_categoria INT,
 nome VARCHAR(100) NOT NULL,
 grupo VARCHAR(100),
 integrante VARCHAR(100),
 preco DECIMAL(10,2),
 estoque INT,

 FOREIGN KEY(id_categoria)
 REFERENCES categorias(id_categoria)
);

CREATE TABLE pedidos(
 id_pedido INT PRIMARY KEY AUTO_INCREMENT,
 id_cliente INT,
 data_pedido DATE,
 status VARCHAR(50),
 valor_total DECIMAL(10,2),

 FOREIGN KEY(id_cliente)
 REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedidos(
 id_item INT PRIMARY KEY AUTO_INCREMENT,
 id_pedido INT,
 id_photocard INT,
 quantidade INT,
 subtotal DECIMAL(10,2),

 FOREIGN KEY(id_pedido)
 REFERENCES pedidos(id_pedido),

 FOREIGN KEY(id_photocard)
 REFERENCES photocards(id_photocard)
);
