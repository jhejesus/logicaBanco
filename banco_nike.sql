CREATE DATABASE nike;
USE nike;

CREATE TABLE usuario(
	usuario_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) NOT NULL, 
   email VARCHAR(255) NOT NULL,
   password VARCHAR(13) NOT NULL,
   confirmPassword VARCHAR(13) NOT NULL 
);
	 	 
	 CREATE TABLE Produtos (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(10),
    tipo VARCHAR(50),
    modelo VARCHAR(100)
);

CREATE TABLE Compras (
    compra_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    data DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

CREATE TABLE Itens_Compra (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    compra_id INT,
    produto_id INT,
    cor VARCHAR(50),
    tamanho VARCHAR(20),
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (compra_id) REFERENCES Compras(compra_id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);
