-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.25-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para avaliacao
CREATE DATABASE IF NOT EXISTS `avaliacao` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `avaliacao`;

-- Copiando estrutura para tabela avaliacao.atendimento
CREATE TABLE IF NOT EXISTS `atendimento` (
  `id_atend` int(11) NOT NULL,
  `crm` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_atend`),
  KEY `crm` (`crm`),
  CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`crm`) REFERENCES `medico` (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.exame
CREATE TABLE IF NOT EXISTS `exame` (
  `id_exame` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `num_paciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_exame`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.medico
CREATE TABLE IF NOT EXISTS `medico` (
  `crm` varchar(10) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `especialidade` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) DEFAULT NULL,
  `endereco` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `Index_Nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure avaliacao.Procedure_Atend_Medicos
DELIMITER //
CREATE PROCEDURE `Procedure_Atend_Medicos`(idm VARCHAR(10))
BEGIN
	SELECT NomeMedico, NomePaciente FROM vw_atend_medicos
	WHERE CRM = idm;
END//
DELIMITER ;

-- Copiando estrutura para procedure avaliacao.Procedure_View_Exames
DELIMITER //
CREATE PROCEDURE `Procedure_View_Exames`()
BEGIN
	SELECT *
FROM vw_atendimentos;
END//
DELIMITER ;

-- Copiando estrutura para view avaliacao.vw_atendimentos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_atendimentos` (
	`Codigo` INT(11) NOT NULL,
	`NomePaciente` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`TipoExame` VARCHAR(30) NULL COLLATE 'utf8mb4_general_ci',
	`PrecoExame` VARCHAR(14) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view avaliacao.vw_atendimentos_pacientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_atendimentos_pacientes` (
	`Codigo` INT(11) NOT NULL,
	`NomePaciente` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`TipoExame` VARCHAR(30) NULL COLLATE 'utf8mb4_general_ci',
	`PrecoExame` VARCHAR(14) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view avaliacao.vw_atend_medicos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_atend_medicos` (
	`CRM` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`NomeMedico` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`Especialidade` VARCHAR(90) NULL COLLATE 'utf8mb4_general_ci',
	`IdPaciente` INT(11) NOT NULL,
	`NomePaciente` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view avaliacao.vw_atendimentos
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_atendimentos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_atendimentos` AS SELECT p.id_paciente AS Codigo, p.nome AS NomePaciente, e.tipo AS TipoExame, CONCAT('R$', e.valor) AS PrecoExame
FROM paciente p, exame e WHERE e.num_paciente = p.id_paciente AND e.id_exame IS NOT NULL ;

-- Copiando estrutura para view avaliacao.vw_atendimentos_pacientes
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_atendimentos_pacientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_atendimentos_pacientes` AS SELECT p.id_paciente AS Codigo, p.nome AS NomePaciente, e.tipo AS TipoExame, CONCAT('R$', e.valor) AS PrecoExame
FROM paciente p, exame e WHERE e.num_paciente = p.id_paciente AND e.id_exame IS NOT NULL ;

-- Copiando estrutura para view avaliacao.vw_atend_medicos
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_atend_medicos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_atend_medicos` AS SELECT 
	m.crm AS CRM,
	m.nome AS NomeMedico,
	m.especialidade AS Especialidade,
	p.id_paciente AS IdPaciente,
	p.nome AS NomePaciente
FROM 
	medico m, atendimento a, paciente p
WHERE 
	a.id_atend = p.id_paciente
	AND a.crm = m.crm ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
