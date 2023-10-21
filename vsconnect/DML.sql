USE bd_vsconnect;

#TECHS
INSERT INTO tb_techs
VALUES (UUID_TO_BIN(UUID()), "React"), (UUID_TO_BIN(UUID()), "HTML"), (UUID_TO_BIN(UUID()), "Java");

SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

#USUARIOS
INSERT INTO tb_usuarios
VALUES (UUID_TO_BIN(UUID()), "Odirlei", "odirlei@gmail.com", "senai", "Rua Niteroi", "12345-678", 0), (UUID_TO_BIN(UUID()), "Alexia", "alexia@gmail.com", "senai", "Rua Niteroi", "12345-678", 0), (UUID_TO_BIN(UUID()), "Thiago", "thiago@gmail.com", "senai", "Rua Niteroi", "12345-678", 0);

DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("8c8d5817-6edc-11ee-b760-b445067b85b0");

UPDATE tb_usuarios SET tipo_usuario = 1 WHERE id_usuario = UUID_TO_BIN("c63821aa-6fc4-11ee-b960-00e04c9f5652");

SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;
SELECT BIN_TO_UUID(id_usuario), nome, email, senha, endereco, cep, tipo_usuario FROM tb_usuarios;

#TABELA INTERMEDIARIA DEV/TECH
INSERT INTO tb_dev_tech
VALUES (UUID_TO_BIN("c6381e3d-6fc4-11ee-b960-00e04c9f5652"), UUID_TO_BIN("a14bca81-6fc4-11ee-b960-00e04c9f5652")), (UUID_TO_BIN("c63821aa-6fc4-11ee-b960-00e04c9f5652"), UUID_TO_BIN("a14bc4a2-6fc4-11ee-b960-00e04c9f5652"));

SELECT BIN_TO_UUID(id_dev), BIN_TO_UUID(id_tech) FROM tb_dev_tech;

#TABELA DE SERVICOS
INSERT INTO tb_servicos VALUES
	(UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("c63822d7-6fc4-11ee-b960-00e04c9f5652"), NULL),
	(UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("c63822d7-6fc4-11ee-b960-00e04c9f5652"), NULL),
	(UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("c63822d7-6fc4-11ee-b960-00e04c9f5652"), NULL);
    
SELECT BIN_TO_UUID(id_servico), titulo FROM tb_servicos;

#TABELA DE COTACAO
INSERT INTO tb_cotacao VALUES(
	UUID_TO_BIN(UUID()),
    10000.00,
    UUID_TO_BIN("c6381e3d-6fc4-11ee-b960-00e04c9f5652"),
    UUID_TO_BIN("b3192019-6fc5-11ee-b960-00e04c9f5652")
);

SELECT BIN_TO_UUID(id_cotacao), valor, BIN_TO_UUID(id_dev), BIN_TO_UUID(id_servico) FROM tb_cotacao;

#TESTE DE COMO FUNCIONA A TABELA INTERMEDIARIA
INSERT INTO tb_dev_tech
VALUES (UUID_TO_BIN("c63821aa-6fc4-11ee-b960-00e04c9f5652"), UUID_TO_BIN("a14bca81-6fc4-11ee-b960-00e04c9f5652")), (UUID_TO_BIN("c6381e3d-6fc4-11ee-b960-00e04c9f5652"), UUID_TO_BIN("a14bc4a2-6fc4-11ee-b960-00e04c9f5652"));