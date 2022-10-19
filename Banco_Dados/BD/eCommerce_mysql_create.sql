CREATE TABLE `TbProduto` (
	`idProduto` int NOT NULL AUTO_INCREMENT,
	`Categoria` INT,
	`Descricao` INT,
	`Valor` INT,
	PRIMARY KEY (`idProduto`)
);

CREATE TABLE `TbEstoque` (
	`idEstoque` int NOT NULL AUTO_INCREMENT,
	`Local` INT AUTO_INCREMENT,
	PRIMARY KEY (`idEstoque`)
);

CREATE TABLE `TbCliente` (
	`idCliente` int NOT NULL AUTO_INCREMENT,
	`Nome` INT,
	`Endereco` INT,
	`Identificacao` INT,
	PRIMARY KEY (`idCliente`)
);

CREATE TABLE `TbFornecedor` (
	`idFornecedor` int NOT NULL AUTO_INCREMENT,
	`Razao Social` INT AUTO_INCREMENT,
	`CNPL` INT,
	PRIMARY KEY (`idFornecedor`)
);

CREATE TABLE `TbPedido` (
	`idPedido` int NOT NULL AUTO_INCREMENT,
	`Status` INT,
	`descricao` INT,
	`fkIdCliente` int NOT NULL,
	`Frete` FLOAT NOT NULL,
	`Valor` FLOAT NOT NULL,
	PRIMARY KEY (`idPedido`)
);

CREATE TABLE `ProdutoEstoque` (
	`fkProduto` int NOT NULL,
	`fkEstoque` int NOT NULL,
	`quantidade` int NOT NULL
);

CREATE TABLE `FornecedorProduto` (
	`fkFornecedor` int NOT NULL,
	`fkProduto` int NOT NULL
);

CREATE TABLE `PedidoProduto` (
	`fkProduto` int NOT NULL,
	`fkPedido` int NOT NULL,
	`Quantidade` int NOT NULL
);

CREATE TABLE `MarketPlaceProduto` (
	`fkMarketPlace` int NOT NULL,
	`fkProduto` int NOT NULL,
	`Quantidade` int NOT NULL
);

CREATE TABLE `MarketPlace` (
	`idMarketPlace` int NOT NULL AUTO_INCREMENT,
	`RazaoSocial` INT,
	`Local` INT,
	PRIMARY KEY (`idMarketPlace`)
);

CREATE TABLE `Pagamento` (
	`fkCliente` int NOT NULL,
	`FormaPagamento` INT NOT NULL,
	`fkPedido` int NOT NULL,
	`fkValor` FLOAT NOT NULL
);

ALTER TABLE `TbPedido` ADD CONSTRAINT `TbPedido_fk0` FOREIGN KEY (`fkIdCliente`) REFERENCES `TbCliente`(`idCliente`);

ALTER TABLE `TbPedido` ADD CONSTRAINT `TbPedido_fk1` FOREIGN KEY (`Frete`) REFERENCES `TbCliente`(`idCliente`);

ALTER TABLE `ProdutoEstoque` ADD CONSTRAINT `ProdutoEstoque_fk0` FOREIGN KEY (`fkProduto`) REFERENCES `TbProduto`(`idProduto`);

ALTER TABLE `ProdutoEstoque` ADD CONSTRAINT `ProdutoEstoque_fk1` FOREIGN KEY (`fkEstoque`) REFERENCES `TbEstoque`(`idEstoque`);

ALTER TABLE `FornecedorProduto` ADD CONSTRAINT `FornecedorProduto_fk0` FOREIGN KEY (`fkFornecedor`) REFERENCES `TbFornecedor`(`idFornecedor`);

ALTER TABLE `FornecedorProduto` ADD CONSTRAINT `FornecedorProduto_fk1` FOREIGN KEY (`fkProduto`) REFERENCES `TbProduto`(`idProduto`);

ALTER TABLE `PedidoProduto` ADD CONSTRAINT `PedidoProduto_fk0` FOREIGN KEY (`fkProduto`) REFERENCES `TbProduto`(`idProduto`);

ALTER TABLE `PedidoProduto` ADD CONSTRAINT `PedidoProduto_fk1` FOREIGN KEY (`fkPedido`) REFERENCES `TbPedido`(`idPedido`);

ALTER TABLE `MarketPlaceProduto` ADD CONSTRAINT `MarketPlaceProduto_fk0` FOREIGN KEY (`fkMarketPlace`) REFERENCES `MarketPlace`(`idMarketPlace`);

ALTER TABLE `MarketPlaceProduto` ADD CONSTRAINT `MarketPlaceProduto_fk1` FOREIGN KEY (`fkProduto`) REFERENCES `TbProduto`(`idProduto`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk0` FOREIGN KEY (`fkCliente`) REFERENCES `TbCliente`(`idCliente`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk1` FOREIGN KEY (`fkPedido`) REFERENCES `TbPedido`(`idPedido`);

ALTER TABLE `Pagamento` ADD CONSTRAINT `Pagamento_fk2` FOREIGN KEY (`fkValor`) REFERENCES `TbPedido`(`Valor`);












