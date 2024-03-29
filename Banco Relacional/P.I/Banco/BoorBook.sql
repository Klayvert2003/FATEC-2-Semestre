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


-- Copiando estrutura do banco de dados para books
CREATE DATABASE IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `books`;

-- Copiando estrutura para tabela books.books
CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `isbn10` varchar(10) DEFAULT NULL,
  `isbn13` varchar(13) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `editora` varchar(30) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `creators` varchar(40) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  UNIQUE KEY `isbn10` (`isbn10`),
  UNIQUE KEY `isbn13` (`isbn13`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.book_user
CREATE TABLE IF NOT EXISTS `book_user` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `date_boor` date DEFAULT NULL,
  `date_devolution` date DEFAULT NULL,
  `id_book` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_control`),
  KEY `id_book` (`id_book`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `book_user_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`),
  CONSTRAINT `book_user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.donation
CREATE TABLE IF NOT EXISTS `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_control` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `image` char(1) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_control` (`id_control`),
  UNIQUE KEY `id_user` (`id_user`),
  CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.login
CREATE TABLE IF NOT EXISTS `login` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id_password` int(11) NOT NULL AUTO_INCREMENT,
  `id_register` int(11) DEFAULT NULL,
  `new_user` varchar(20) NOT NULL,
  `new_password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_password`),
  KEY `id_register` (`id_register`),
  CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`id_register`) REFERENCES `register` (`id_register`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure books.Procedure_View_User
DELIMITER //
CREATE PROCEDURE `Procedure_View_User`()
BEGIN
	SELECT 
		cpf AS CPF,
		name AS Nome,
		type_user AS TipoUsuario,
		adress AS Endereco,
		phone AS Contato,
		email AS Email
	FROM 
		user;
	END//
DELIMITER ;

-- Copiando estrutura para tabela books.register
CREATE TABLE IF NOT EXISTS `register` (
  `id_register` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_register`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela books.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_register` date NOT NULL,
  `date_update` date NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_book` (`id_book`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para função books.Update_Password
DELIMITER //
CREATE FUNCTION `Update_Password`(id INT, s VARCHAR(20)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	UPDATE register
	SET PASSWORD = s
	WHERE id_register = id;
	
	RETURN s;
END//
DELIMITER ;

-- Copiando estrutura para tabela books.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `type_user` varchar(15) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `adress` varchar(40) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view books.vw_donationmg
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_donationmg` (
	`id_user` INT(11) NOT NULL,
	`cpf` VARCHAR(14) NOT NULL COLLATE 'utf8mb4_general_ci',
	`type_user` VARCHAR(15) NULL COLLATE 'utf8mb4_general_ci',
	`name` VARCHAR(40) NULL COLLATE 'utf8mb4_general_ci',
	`adress` VARCHAR(40) NULL COLLATE 'utf8mb4_general_ci',
	`cep` INT(11) NULL,
	`phone` INT(11) NULL,
	`email` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para trigger books.TG_AFTER_INSERT
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER TG_AFTER_INSERT AFTER INSERT 
	ON book_user
	FOR EACH ROW
	BEGIN
		DECLARE contador INT;
		SELECT COUNT(*) INTO contador FROM stock WHERE id_book = NEW.id_book;
		IF contador = 0 THEN
			INSERT INTO stock(id_book, quantity, date_register, date_update) 
			VALUES(NEW.id_book, 1, CURDATE(), CURDATE());
		ELSEIF contador > 0 THEN
			UPDATE stock
			SET quantity = quantity + 1
			WHERE id_book = NEW.id_book;
		END IF; 
 	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view books.vw_donationmg
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_donationmg`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_donationmg` AS SELECT * FROM user WHERE cep >= 30000000 AND cep <= 39999999 ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
