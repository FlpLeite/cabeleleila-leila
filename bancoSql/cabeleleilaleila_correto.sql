-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/02/2024 às 18:24
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cabeleleilaleila_correto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `agendamento_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `status` enum('confirmado','pendente','cancelado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento_servico`
--

CREATE TABLE `agendamento_servico` (
  `agendamento_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `servico_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cliente_id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`cliente_id`, `nome`, `telefone`, `email`, `senha`) VALUES
(1, 'felipe leite', NULL, 'teste@hmail.com', '$2y$10$1/gbPKI.avwpqMV/yUf3BO6ISuEqlWmBDRfBUo7j1pvCYuhtgfp7y'),
(2, 'teste', NULL, 'teste@hotmail.com', '$2y$10$E.ZXThFxndG37R4Aqz3AOeNLE4wHXihUh1L1LYv60Aq8Wr3cI0dUS'),
(3, 'teste1', NULL, 'teste1@gmail.com', '$2y$10$TLaQqdDrIk12WV5c9wE1aeKPa4AnFLOcaKUVdmIoMA9oZoVPTSB82'),
(4, 'teste2', NULL, 'teste2@gmail.com', '$2y$10$VsAvYKDOZ1DNVft7PcMj6uS1QWhBh4hq1IcfaO9jEM3HVVWPRBbjG');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`agendamento_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `agendamento_servico`
--
ALTER TABLE `agendamento_servico`
  ADD PRIMARY KEY (`agendamento_id`,`servico_id`),
  ADD KEY `servico_id` (`servico_id`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`servico_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cliente_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `agendamento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `fk_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`cliente_id`);

--
-- Restrições para tabelas `agendamento_servico`
--
ALTER TABLE `agendamento_servico`
  ADD CONSTRAINT `agendamento_servico_ibfk_1` FOREIGN KEY (`agendamento_id`) REFERENCES `agendamento` (`agendamento_id`),
  ADD CONSTRAINT `agendamento_servico_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servico` (`servico_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
