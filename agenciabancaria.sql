-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Nov-2023 às 21:10
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenciabancaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrocartao`
--

DROP TABLE IF EXISTS `cadastrocartao`;
CREATE TABLE IF NOT EXISTS `cadastrocartao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastroclientes`
--

DROP TABLE IF EXISTS `cadastroclientes`;
CREATE TABLE IF NOT EXISTS `cadastroclientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomecompleto` varchar(140) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(16) NOT NULL,
  `gerente` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `cartao` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logingerente`
--

DROP TABLE IF EXISTS `logingerente`;
CREATE TABLE IF NOT EXISTS `logingerente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `senha` varchar(16) NOT NULL,
  `nome` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `logingerente`
--

INSERT INTO `logingerente` (`id`, `email`, `senha`, `nome`) VALUES
(1, 'heczinn@gmail.com', 'admhec', 'Heitor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
