CREATE TABLE `Cliente` (
	`idCliente` int NOT NULL AUTO_INCREMENT,
	`Nome` int,
	`Endereco` INT AUTO_INCREMENT,
	PRIMARY KEY (`idCliente`)
);

CREATE TABLE `OrdemServico` (
	`idOS` int NOT NULL AUTO_INCREMENT,
	`DataEmissao` DATE,
	`Valor` FLOAT,
	`Status` int,
	`DataConclusao` DATE,
	`fkMecanico` int,
	`fkVeiculo` int NOT NULL,
	`Autorizacao` INT,
	PRIMARY KEY (`idOS`)
);

CREATE TABLE `Mecanico` (
	`idMecanico` int NOT NULL AUTO_INCREMENT,
	`Nome` INT UNIQUE,
	`Endereco` INT UNIQUE,
	`Especialidade` INT UNIQUE,
	PRIMARY KEY (`idMecanico`)
);

CREATE TABLE `ClienteOrdemServico` (
	`fkCliente` int NOT NULL,
	`fkOS` int NOT NULL
);

CREATE TABLE `Veiculo` (
	`idVeiculo` int NOT NULL,
	`fkVeiculo` int NOT NULL,
	PRIMARY KEY (`idVeiculo`)
);

CREATE TABLE `Orcamento` (
	`idOrcamento` int NOT NULL,
	`ValorPecas` FLOAT,
	`ValorMaoObra` FLOAT,
	`ValorTotal` FLOAT
);

CREATE TABLE `Pecas` (
	`idPeca` int NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT,
	`Descricao` INT,
	PRIMARY KEY (`idPeca`)
);

CREATE TABLE `MaoObra` (
	`idMaoObra` int NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT,
	`Descricao` INT,
	PRIMARY KEY (`idMaoObra`)
);

ALTER TABLE `OrdemServico` ADD CONSTRAINT `OrdemServico_fk0` FOREIGN KEY (`fkMecanico`) REFERENCES `Mecanico`(`idMecanico`);

ALTER TABLE `OrdemServico` ADD CONSTRAINT `OrdemServico_fk1` FOREIGN KEY (`fkVeiculo`) REFERENCES `Veiculo`(`idVeiculo`);

ALTER TABLE `ClienteOrdemServico` ADD CONSTRAINT `ClienteOrdemServico_fk0` FOREIGN KEY (`fkCliente`) REFERENCES `Cliente`(`idCliente`);

ALTER TABLE `ClienteOrdemServico` ADD CONSTRAINT `ClienteOrdemServico_fk1` FOREIGN KEY (`fkOS`) REFERENCES `OrdemServico`(`idOS`);

ALTER TABLE `Veiculo` ADD CONSTRAINT `Veiculo_fk0` FOREIGN KEY (`fkVeiculo`) REFERENCES `Cliente`(`idCliente`);

ALTER TABLE `Orcamento` ADD CONSTRAINT `Orcamento_fk0` FOREIGN KEY (`idOrcamento`) REFERENCES `OrdemServico`(`idOS`);

ALTER TABLE `Orcamento` ADD CONSTRAINT `Orcamento_fk1` FOREIGN KEY (`ValorPecas`) REFERENCES `Pecas`(`idPeca`);

ALTER TABLE `Orcamento` ADD CONSTRAINT `Orcamento_fk2` FOREIGN KEY (`ValorMaoObra`) REFERENCES `MaoObra`(`idMaoObra`);









