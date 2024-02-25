-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/02/2024 às 22:39
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

--
-- Despejando dados para a tabela `agendamento`
--

INSERT INTO `agendamento` (`agendamento_id`, `cliente_id`, `data_hora`, `status`) VALUES
(1, 5, '2024-02-28 16:00:00', 'pendente'),
(2, 5, '2024-03-28 16:00:00', 'pendente'),
(3, 5, '2024-03-28 16:00:00', 'pendente'),
(4, 5, '2024-03-28 16:00:00', 'pendente'),
(6, 5, '2024-03-28 16:00:00', 'pendente'),
(7, 5, '2024-03-28 16:00:00', 'pendente'),
(8, 5, '2024-03-28 16:00:00', 'pendente'),
(9, 5, '2024-03-28 16:00:00', 'pendente'),
(10, 5, '2024-03-28 16:00:00', 'pendente'),
(11, 5, '2024-03-28 16:00:00', 'pendente'),
(12, 5, '2024-03-28 16:00:00', 'pendente'),
(13, 5, '2024-03-28 16:00:00', 'pendente'),
(14, 5, '2024-03-28 16:00:00', 'pendente'),
(15, 5, '2024-02-28 17:00:00', 'pendente'),
(16, 5, '2024-02-28 10:00:00', 'pendente'),
(17, 5, '2024-02-28 10:00:00', 'pendente'),
(18, 5, '2024-03-01 10:00:00', 'pendente'),
(19, 5, '2024-04-01 13:00:00', 'pendente'),
(20, 5, '2024-11-06 06:11:00', 'pendente'),
(21, 5, '2025-11-06 16:00:00', 'pendente'),
(22, 5, '2025-11-06 16:00:00', 'pendente'),
(23, 5, '2025-11-06 16:00:00', 'pendente'),
(24, 5, '2025-11-06 16:00:00', 'pendente'),
(25, 5, '2025-11-06 16:00:00', 'pendente'),
(26, 5, '2025-11-06 16:00:00', 'pendente'),
(27, 5, '2025-11-06 16:00:00', 'pendente'),
(28, 5, '2025-11-06 16:00:00', 'pendente'),
(29, 5, '2025-11-06 16:00:00', 'pendente'),
(30, 5, '2025-11-06 16:00:00', 'pendente'),
(31, 5, '2025-11-06 16:00:00', 'pendente'),
(32, 5, '2025-11-06 16:00:00', 'pendente'),
(33, 5, '2025-11-06 16:00:00', 'pendente'),
(34, 5, '2025-11-06 16:00:00', 'pendente'),
(35, 5, '2025-11-06 16:00:00', 'pendente'),
(36, 5, '2025-11-06 16:00:00', 'pendente'),
(37, 5, '2025-11-06 16:00:00', 'pendente'),
(39, 6, '2024-03-24 15:00:00', 'pendente'),
(40, 6, '2024-03-24 15:00:00', 'pendente'),
(41, 6, '2024-03-24 15:00:00', 'pendente'),
(42, 6, '2024-03-24 15:00:00', 'pendente'),
(43, 6, '2024-03-24 15:00:00', 'pendente'),
(44, 6, '2024-03-24 15:00:00', 'pendente'),
(45, 6, '2024-03-24 15:00:00', 'pendente'),
(46, 6, '2024-03-24 15:00:00', 'pendente'),
(47, 6, '2024-03-24 15:00:00', 'pendente'),
(48, 6, '2024-03-24 15:00:00', 'pendente'),
(49, 6, '2024-03-24 15:00:00', 'pendente'),
(50, 6, '2024-03-24 15:00:00', 'pendente'),
(51, 6, '2024-03-24 15:00:00', 'pendente'),
(52, 6, '2024-03-24 15:00:00', 'pendente'),
(53, 6, '2024-03-24 15:00:00', 'pendente'),
(54, 6, '2024-03-24 15:00:00', 'pendente'),
(55, 6, '2024-03-24 15:00:00', 'pendente'),
(56, 9, '2024-11-06 15:00:00', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamento_servico`
--

CREATE TABLE `agendamento_servico` (
  `agendamento_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamento_servico`
--

INSERT INTO `agendamento_servico` (`agendamento_id`, `servico_id`) VALUES
(20, 211),
(20, 212),
(20, 213),
(20, 214),
(20, 215),
(20, 216),
(20, 217),
(20, 218),
(20, 219),
(20, 220),
(21, 211),
(21, 212),
(21, 213),
(21, 214),
(21, 215),
(21, 216),
(21, 217),
(21, 218),
(21, 219),
(21, 220),
(22, 211),
(22, 212),
(22, 213),
(22, 214),
(22, 215),
(22, 216),
(22, 217),
(22, 218),
(22, 219),
(22, 220),
(23, 211),
(23, 212),
(23, 213),
(23, 214),
(23, 215),
(23, 216),
(23, 217),
(23, 218),
(23, 219),
(23, 220),
(24, 211),
(24, 212),
(24, 213),
(24, 214),
(24, 215),
(24, 216),
(24, 217),
(24, 218),
(24, 219),
(24, 220),
(25, 211),
(25, 212),
(25, 213),
(25, 214),
(25, 215),
(25, 216),
(25, 217),
(25, 218),
(25, 219),
(25, 220),
(26, 211),
(26, 212),
(26, 213),
(26, 214),
(26, 215),
(26, 216),
(26, 217),
(26, 218),
(26, 219),
(26, 220),
(27, 211),
(27, 212),
(27, 213),
(27, 214),
(27, 215),
(27, 216),
(27, 217),
(27, 218),
(27, 219),
(27, 220),
(28, 211),
(28, 212),
(28, 213),
(28, 214),
(28, 215),
(28, 216),
(28, 217),
(28, 218),
(28, 219),
(28, 220),
(29, 211),
(29, 212),
(29, 213),
(29, 214),
(29, 215),
(29, 216),
(29, 217),
(29, 218),
(29, 219),
(29, 220),
(30, 211),
(30, 212),
(30, 213),
(30, 214),
(30, 215),
(30, 216),
(30, 217),
(30, 218),
(30, 219),
(30, 220),
(31, 211),
(31, 212),
(31, 213),
(31, 214),
(31, 215),
(31, 216),
(31, 217),
(31, 218),
(31, 219),
(31, 220),
(32, 211),
(32, 212),
(32, 213),
(32, 214),
(32, 215),
(32, 216),
(32, 217),
(32, 218),
(32, 219),
(32, 220),
(33, 211),
(33, 212),
(33, 213),
(33, 214),
(33, 215),
(33, 216),
(33, 217),
(33, 218),
(33, 219),
(33, 220),
(34, 211),
(34, 212),
(34, 213),
(34, 214),
(34, 215),
(34, 216),
(34, 217),
(34, 218),
(34, 219),
(34, 220),
(35, 211),
(35, 212),
(35, 213),
(35, 214),
(35, 215),
(35, 216),
(35, 217),
(35, 218),
(35, 219),
(35, 220),
(36, 211),
(36, 212),
(36, 213),
(36, 214),
(36, 215),
(36, 216),
(36, 217),
(36, 218),
(36, 219),
(36, 220),
(37, 211),
(37, 212),
(37, 213),
(37, 214),
(37, 215),
(37, 216),
(37, 217),
(37, 218),
(37, 219),
(37, 220),
(39, 211),
(39, 212),
(39, 213),
(39, 214),
(39, 215),
(39, 216),
(39, 217),
(39, 218),
(39, 219),
(39, 220),
(40, 211),
(40, 212),
(40, 213),
(40, 214),
(40, 215),
(40, 216),
(40, 217),
(40, 218),
(40, 219),
(40, 220),
(41, 211),
(41, 212),
(41, 213),
(41, 214),
(41, 215),
(41, 216),
(41, 217),
(41, 218),
(41, 219),
(41, 220),
(42, 211),
(42, 212),
(42, 213),
(42, 214),
(42, 215),
(42, 216),
(42, 217),
(42, 218),
(42, 219),
(42, 220),
(43, 211),
(43, 212),
(43, 213),
(43, 214),
(43, 215),
(43, 216),
(43, 217),
(43, 218),
(43, 219),
(43, 220),
(44, 211),
(44, 212),
(44, 213),
(44, 214),
(44, 215),
(44, 216),
(44, 217),
(44, 218),
(44, 219),
(44, 220),
(45, 211),
(45, 212),
(45, 213),
(45, 214),
(45, 215),
(45, 216),
(45, 217),
(45, 218),
(45, 219),
(45, 220),
(46, 211),
(46, 212),
(46, 213),
(46, 214),
(46, 215),
(46, 216),
(46, 217),
(46, 218),
(46, 219),
(46, 220),
(47, 211),
(47, 212),
(47, 213),
(47, 214),
(47, 215),
(47, 216),
(47, 217),
(47, 218),
(47, 219),
(47, 220),
(48, 211),
(48, 212),
(48, 213),
(48, 214),
(48, 215),
(48, 216),
(48, 217),
(48, 218),
(48, 219),
(48, 220),
(49, 211),
(49, 212),
(49, 213),
(49, 214),
(49, 215),
(49, 216),
(49, 217),
(49, 218),
(49, 219),
(49, 220),
(50, 211),
(50, 212),
(50, 213),
(50, 214),
(50, 215),
(50, 216),
(50, 217),
(50, 218),
(50, 219),
(50, 220),
(51, 211),
(51, 212),
(51, 213),
(51, 214),
(51, 215),
(51, 216),
(51, 217),
(51, 218),
(51, 219),
(51, 220),
(52, 211),
(52, 212),
(52, 213),
(52, 214),
(52, 215),
(52, 216),
(52, 217),
(52, 218),
(52, 219),
(52, 220),
(53, 211),
(53, 212),
(53, 213),
(53, 214),
(53, 215),
(53, 216),
(53, 217),
(53, 218),
(53, 219),
(53, 220),
(54, 211),
(54, 212),
(54, 213),
(54, 214),
(54, 215),
(54, 216),
(54, 217),
(54, 218),
(54, 219),
(54, 220),
(55, 211),
(55, 212),
(55, 213),
(55, 214),
(55, 215),
(55, 216),
(55, 217),
(55, 218),
(55, 219),
(55, 220),
(56, 211),
(56, 213),
(56, 216),
(56, 218);

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

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`servico_id`, `nome`, `descricao`, `duracao`, `preco`) VALUES
(211, 'Corte de Cabelo', 'Corte moderno e personalizado', 30, 50.00),
(212, 'Coloração', 'Coloração profissional', 60, 80.00),
(213, 'Pedicure', 'Tratamento completo para os pés', 45, 60.00),
(214, 'Hidratação Capilar', 'Hidratação intensiva para cabelos', 45, 70.00),
(215, 'Escova Progressiva', 'Alisamento e redução de volume', 90, 150.00),
(216, 'Depilação', 'Remoção de pelos indesejados', 30, 40.00),
(217, 'Design de Sobrancelha', 'Modelagem de sobrancelhas', 20, 30.00),
(218, 'Maquiagem', 'Maquiagem profissional', 45, 60.00),
(219, 'Spa Facial', 'Tratamento facial relaxante', 60, 90.00),
(220, 'Massagem Relaxante', 'Massagem relaxante e terapêutica', 60, 80.00);

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
(4, 'teste2', NULL, 'teste2@gmail.com', '$2y$10$VsAvYKDOZ1DNVft7PcMj6uS1QWhBh4hq1IcfaO9jEM3HVVWPRBbjG'),
(5, 'teste5', NULL, 'teste5@gmail.com', '$2y$10$9re4rNHv9wQ6zLZT2JMwH.OmqM6VRhLHYDK6RyetDXTYZeJsA.fMm'),
(6, 'teste6', NULL, 'teste6@gmail.com', '$2y$10$SJhHMpOpNH2znmTSxcl7J./3Z9ngdYe2pMDL.vCjWYGqd3hr/uoQ6'),
(7, '', NULL, '', '$2y$10$hq7TFVaJZHx4QOOc63k8m./m5q9YLRQYZPWqUmc1WnOcvu1mnbWOm'),
(9, 'teste7', NULL, 'teste7@gmail.com', '$2y$10$m6sxx3IL0H5oan/YKIdF0uQcsxLLybxWi/7OKc4n52WnG9Ph7IAcm');

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
  MODIFY `agendamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
