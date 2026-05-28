INSERT INTO clientes(nome,email,telefone)
VALUES
('minsu','minsu@gmail.com','119999999'),
('yoko','yoko@gmail.com','118888888');

INSERT INTO categorias(nome,descricao)
VALUES
('K-pop','Photocards de grupos K-pop'),
('Limited','Edições especiais');

INSERT INTO photocards
(nome,grupo,integrante,preco,estoque,id_categoria)
VALUES
('PC NewJeans','NewJeans','Minji',25.00,10,1),
('PC BTS','BTS','Jungkook',30.00,5,1);

INSERT INTO pedidos
(id_cliente,data_pedido,status,valor_total)
VALUES
(1,'2026-05-27','Concluído',25.00);

INSERT INTO itens_pedidos
(id_pedido,id_photocard,quantidade,subtotal)
VALUES
(1,1,1,25.00);
