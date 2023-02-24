-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.13-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para avaliacao
CREATE DATABASE IF NOT EXISTS `avaliacao` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `avaliacao`;

-- Copiando estrutura para tabela avaliacao.atendimento
CREATE TABLE IF NOT EXISTS `atendimento` (
  `crm` char(10) DEFAULT NULL,
  `numero` int(10) DEFAULT NULL,
  KEY `crm` (`crm`),
  KEY `numero` (`numero`),
  CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`crm`) REFERENCES `medico` (`crm`),
  CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`numero`) REFERENCES `paciente` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.exame
CREATE TABLE IF NOT EXISTS `exame` (
  `codigo` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `numeroPaciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.medico
CREATE TABLE IF NOT EXISTS `medico` (
  `crm` char(10) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `especialidade` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela avaliacao.paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `numero` int(11) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `index_paciente` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- Copiando estrutura para view avaliacao.vw_atendimentos_pacientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_atendimentos_pacientes` (
	`Codigo` INT(11) NOT NULL,
	`NomePaciente` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`TipoExame` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`PrecoExame` VARCHAR(14) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view avaliacao.vw_atend_medicos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_atend_medicos` (
	`IdPaciente` INT(11) NOT NULL,
	`NomePaciente` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`CRM` CHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`NomeMedico` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`Especialidade` VARCHAR(90) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view avaliacao.vw_atendimentos_pacientes
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_atendimentos_pacientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_atendimentos_pacientes` AS SELECT p.numero AS Codigo, p.nome AS NomePaciente, e.tipo AS TipoExame, CONCAT('R$', e.valor) AS PrecoExame
FROM paciente p, exame e WHERE e.codigo = p.numero AND e.codigo IS NOT NULL ;

-- Copiando estrutura para view avaliacao.vw_atend_medicos
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_atend_medicos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_atend_medicos` AS SELECT 
	p.numero AS IdPaciente,
	p.nome AS NomePaciente,
	m.crm AS CRM,
	m.nome AS NomeMedico,
	m.especialidade AS Especialidade
FROM 
	medico m, atendimento a, paciente p
WHERE 
	a.numero = p.numero
	AND a.crm = m.crm 
GROUP BY p.numero ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
