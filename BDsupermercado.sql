-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Maio-2025 às 13:22
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `supermercado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` text DEFAULT NULL,
  `data_criacao` datetime DEFAULT current_timestamp(),
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `data_criacao`, `ativo`) VALUES
(1, 'Alimentos', 'Produtos alimentícios em geral', '2025-05-15 19:07:43', 1),
(2, 'Bebidas', 'Bebidas alcoólicas e não alcoólicas', '2025-05-15 19:07:43', 1),
(3, 'Higiene', 'Produtos de higiene pessoal e limpeza', '2025-05-15 19:07:43', 1),
(4, 'Eletrodomésticos', 'Produtos eletrônicos e eletrodomésticos', '2025-05-15 19:07:43', 1),
(5, 'Vestuário', 'Roupas e acessórios', '2025-05-15 19:07:43', 1),
(6, 'Perfumaria', 'Produtos de beleza e perfumes', '2025-05-15 19:07:43', 1),
(7, 'Frutas', 'Frutas frescas e orgânicas', '2025-05-15 19:07:43', 1),
(8, 'Verduras', 'Verduras frescas e congeladas', '2025-05-15 19:07:43', 1),
(9, 'Laticínios', 'Leite, queijos, iogurtes e derivados', '2025-05-15 19:07:43', 1),
(10, 'Congelados', 'Produtos congelados e sorvetes', '2025-05-15 19:07:43', 1),
(11, 'Panificação', 'Pães, bolos e outros produtos de panificação', '2025-05-15 19:07:43', 1),
(12, 'Carnes', 'Carnes frescas e processadas', '2025-05-15 19:07:43', 1),
(13, 'Peixes', 'Peixes e frutos do mar', '2025-05-15 19:07:43', 1),
(14, 'Doces', 'Chocolates, balas, biscoitos e outros doces', '2025-05-15 19:07:43', 1),
(15, 'Temperos', 'Temperos, especiarias e condimentos', '2025-05-15 19:07:43', 1),
(16, 'Grãos', 'Arroz, feijão, milho, lentilha e outros grãos', '2025-05-15 19:07:43', 1),
(17, 'Legumes', 'Legumes frescos e congelados', '2025-05-15 19:07:43', 1),
(18, 'Produtos Naturais', 'Produtos orgânicos e naturais', '2025-05-15 19:07:43', 1),
(19, 'Limpeza', 'Produtos de limpeza para casa e escritório', '2025-05-15 19:07:43', 1),
(20, 'Pet Shop', 'Produtos para animais de estimação', '2025-05-15 19:07:43', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `data_cadastro` datetime DEFAULT current_timestamp(),
  `ativo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `cpf`, `genero`, `data_cadastro`, `ativo`) VALUES
(1, 'Ana Silva', 'ana1@email.com', '11999990001', 'Rua A, 123', '2000-01-01', '123.456.789-01', 'F', '2025-05-15 19:12:26', 1),
(2, 'Bruno Lima', 'bruno@email.com', '11999990002', 'Rua B, 456', '1995-05-12', '123.456.789-02', 'M', '2025-05-15 19:12:26', 1),
(3, 'Carlos Souza', 'carlos@email.com', '11999990003', 'Rua C, 789', '1990-03-23', '123.456.789-03', 'M', '2025-05-15 19:12:26', 1),
(4, 'Ana Silva', 'ana2@email.com', '11999990004', 'Rua D, 321', '2000-01-01', '123.456.789-04', 'F', '2025-05-15 19:12:26', 1),
(5, 'Eduardo Costa', 'eduardo@email.com', '11999990005', 'Rua E, 654', '1985-08-14', '123.456.789-05', 'M', '2025-05-15 19:12:26', 1),
(6, 'Fernanda Dias', 'fernanda@email.com', '11999990006', 'Rua F, 987', '1999-09-09', '123.456.789-06', 'F', '2025-05-15 19:12:26', 1),
(7, 'Gabriel Souza', 'gabriel@email.com', '11999990007', 'Rua G, 111', '2001-11-11', '123.456.789-07', 'M', '2025-05-15 19:12:26', 1),
(8, 'Heloisa Pereira', 'heloisa@email.com', '11999990008', 'Rua H, 222', '1998-02-02', '123.456.789-08', 'F', '2025-05-15 19:12:26', 1),
(9, 'Isabela Santos', 'isabela@email.com', '11999990009', 'Rua I, 333', '2002-12-12', '123.456.789-09', 'F', '2025-05-15 19:12:26', 1),
(10, 'João Pedro', 'joao@email.com', '11999990010', 'Rua J, 444', '1994-04-04', '123.456.789-10', 'M', '2025-05-15 19:12:26', 1),
(11, 'Karina Dias', 'karina@email.com', '11999990011', 'Rua K, 555', '1993-03-03', '123.456.789-11', 'F', '2025-05-15 19:12:26', 1),
(12, 'Lucas Rocha', 'lucas@email.com', '11999990012', 'Rua L, 666', '1989-09-09', '123.456.789-12', 'M', '2025-05-15 19:12:26', 1),
(13, 'Marcela Lima', 'marcela@email.com', '11999990013', 'Rua M, 777', '1997-07-07', '123.456.789-13', 'F', '2025-05-15 19:12:26', 1),
(14, 'Nicolas Costa', 'nicolas@email.com', '11999990014', 'Rua N, 888', '1996-06-06', '123.456.789-14', 'M', '2025-05-15 19:12:26', 1),
(15, 'Ana Silva', 'ana3@email.com', '11999990015', 'Rua O, 999', '2000-01-01', '123.456.789-15', 'F', '2025-05-15 19:12:26', 1),
(16, 'Otávio Mendes', 'otavio@email.com', '11999990016', 'Rua P, 100', '1992-02-02', '123.456.789-16', 'M', '2025-05-15 19:12:26', 1),
(17, 'Patrícia Moura', 'patricia@email.com', '11999990017', 'Rua Q, 200', '1991-01-01', '123.456.789-17', 'F', '2025-05-15 19:12:26', 1),
(18, 'Quésia Araújo', 'quesia@email.com', '11999990018', 'Rua R, 300', '1988-08-08', '123.456.789-18', 'F', '2025-05-15 19:12:26', 1),
(19, 'Rafael Nunes', 'rafael@email.com', '11999990019', 'Rua S, 400', '2003-03-03', '123.456.789-19', 'M', '2025-05-15 19:12:26', 1),
(20, 'Silvia Martins', 'silvia@email.com', '11999990020', 'Rua T, 500', '1990-10-10', '123.456.789-20', 'F', '2025-05-15 19:12:26', 1),
(21, 'Carlos Souza', 'carlos2@email.com', '11999990021', 'Rua U, 600', '1990-03-23', '123.456.789-21', 'M', '2025-05-15 19:12:26', 1),
(22, 'Tamires Lopes', 'tamires@email.com', '11999990022', 'Rua V, 700', '1993-12-12', '123.456.789-22', 'F', '2025-05-15 19:12:26', 1),
(23, 'Ubirajara Silva', 'ubirajara@email.com', '11999990023', 'Rua W, 800', '1980-01-01', '123.456.789-23', 'M', '2025-05-15 19:12:26', 1),
(24, 'Vera Cruz', 'vera@email.com', '11999990024', 'Rua X, 900', '1979-09-09', '123.456.789-24', 'F', '2025-05-15 19:12:26', 1),
(25, 'William Souza', 'william@email.com', '11999990025', 'Rua Y, 1000', '1987-07-07', '123.456.789-25', 'M', '2025-05-15 19:12:26', 1),
(26, 'Xuxa Meneghel', 'xuxa@email.com', '11999990026', 'Rua Z, 1100', '1963-03-27', '123.456.789-26', 'F', '2025-05-15 19:12:26', 1),
(27, 'Yasmin Silva', 'yasmin@email.com', '11999990027', 'Rua AA, 1200', '2005-05-05', '123.456.789-27', 'F', '2025-05-15 19:12:26', 1),
(28, 'Zeca Pagodinho', 'zeca@email.com', '11999990028', 'Rua BB, 1300', '1959-02-04', '123.456.789-28', 'M', '2025-05-15 19:12:26', 1),
(29, 'Ana Silva', 'ana4@email.com', '11999990029', 'Rua CC, 1400', '2000-01-01', '123.456.789-29', 'F', '2025-05-15 19:12:26', 1),
(30, 'Carlos Souza', 'carlos3@email.com', '11999990030', 'Rua DD, 1500', '1990-03-23', '123.456.789-30', 'M', '2025-05-15 19:12:26', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `filial`
--

CREATE TABLE `filial` (
  `cnpj` bigint(14) NOT NULL,
  `endereco` text DEFAULT NULL,
  `telefone` bigint(13) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `numeroFuncionarios` int(11) DEFAULT NULL,
  `horarioAbertura` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `filial`
--

INSERT INTO `filial` (`cnpj`, `endereco`, `telefone`, `numero`, `numeroFuncionarios`, `horarioAbertura`) VALUES
(15896231648795, 'rua 12 de maio curitiba', 5549999346982, 12, 25, '08:00:00'),
(15987456321478, 'avenida Brasil, São Paulo', 559999887766, 8, 30, '09:30:00'),
(16023598765432, 'rua das Flores, Rio de Janeiro', 558888776655, 15, 45, '14:00:00'),
(16198765432109, 'praça da Liberdade, Belo Horizonte', 557777665544, 5, 20, '11:15:00'),
(16234567890123, 'avenida Paulista, São Paulo', 556666554433, 20, 10, '16:45:00'),
(16345678901234, 'rua das Palmeiras, Salvador', 555555443322, 10, 55, '13:30:00'),
(16456789012345, 'avenida Atlântica, Recife', 554444332211, 25, 35, '10:00:00'),
(16567890123456, 'rua do Comércio, Fortaleza', 553333221100, 18, 50, '17:15:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cnpj` bigint(14) NOT NULL,
  `inscricaoEstadual` bigint(9) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `telefone` bigint(13) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `horarioEntrega` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`cnpj`, `inscricaoEstadual`, `nome`, `endereco`, `telefone`, `email`, `horarioEntrega`) VALUES
(25934658792581, 261578956, 'brasil atacadista', 'rua maciel curitiba', 5549999652891, 'sandroana@gmail.com', '10:30:00'),
(35934769873642, 362789654, 'loja varejo', 'avenida central sp', 5549987654321, 'joana@gmail.com', '14:00:00'),
(45934870984753, 463210987, 'fornecedor de materiais', 'rua das flores rio', 5549976543210, 'marcio@gmail.com', '09:15:00'),
(55934982095864, 564321098, 'distribuidora', 'praça da liberdade bh', 5549965432109, 'ana@gmail.com', '16:45:00'),
(65935093106975, 665432109, 'atacadista de alimentos', 'avenida paulista sp', 5549954321098, 'lucas@gmail.com', '11:00:00'),
(75935104217086, 766543210, 'comércio de eletrônicos', 'rua das laranjeiras curitiba', 5549943210987, 'paula@gmail.com', '13:30:00'),
(85935215328197, 867654321, 'serviços de manutenção', 'avenida das nações sao paulo', 5549932109876, 'felipe@gmail.com', '15:15:00'),
(95935326439208, 968765432, 'consultoria empresarial', 'rua das palmeiras belo horizonte', 5549921098765, 'carla@gmail.com', '17:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cpf` bigint(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `telefone` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cpf`, `nome`, `dataNascimento`, `dataCadastro`, `genero`, `endereco`, `telefone`) VALUES
(1921031245, 'João Ber', '2010-05-11', '2020-04-30', 'masculino', 'rua afonso pena centro curitiba', 5549999562356),
(3578945367, 'Pedro Lima', '2009-07-30', '2021-01-10', 'masculino', 'rua das flores 56 belo horizonte', 5531981234567),
(4561238976, 'Ana Clara', '2011-10-05', '2022-06-20', 'feminino', 'rua ipiranga 789 porto alegre', 5551999887766),
(5678934512, 'Lucas Rocha', '2007-12-17', '2018-09-12', 'masculino', 'alameda santos 900 são paulo', 5511965432187),
(6789123456, 'Isabela Nunes', '2010-02-14', '2021-03-18', 'feminino', 'rua xv de novembro 321 curitiba', 5541987744521),
(7890123487, 'Mateus Silva', '2006-09-25', '2017-08-03', 'masculino', 'rua amazonas 12 manaus', 5592983345566),
(8901234563, 'Camila Dias', '2008-06-09', '2019-07-22', 'feminino', 'rua das palmeiras 77 salvador', 5571991234432);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `preco_promocional` decimal(10,2) DEFAULT NULL,
  `estoque` int(11) NOT NULL,
  `estoque_minimo` int(11) NOT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  `data_criacao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `preco_promocional`, `estoque`, `estoque_minimo`, `peso`, `marca`, `data_fabricacao`, `data_validade`, `categoria_id`, `ativo`, `data_criacao`) VALUES
(1, 'Arroz Tipo 1', 'Pacote de 5kg de arroz branco tipo 1', 22.90, NULL, 50, 20, 5.00, 'Camil', '2024-01-10', '2025-12-10', 1, 1, '2025-05-15 19:29:22'),
(2, 'Arroz Tipo 1 - Promoção', 'Pacote promocional de 5kg', 22.90, 19.90, 15, 20, 5.00, 'Camil', '2024-01-15', '2025-12-15', 1, 1, '2025-05-15 19:29:22'),
(3, 'Feijão Carioca', 'Pacote de 1kg de feijão carioca', 9.50, NULL, 4, 10, 1.00, 'Kicaldo', '2024-02-20', '2025-10-01', 1, 1, '2025-05-15 19:29:22'),
(4, 'Feijão Preto', 'Pacote de 1kg de feijão preto', 9.90, 8.90, 25, 10, 1.00, 'Namorado', '2024-03-01', '2025-10-10', 1, 1, '2025-05-15 19:29:22'),
(5, 'Óleo de Soja', 'Óleo de soja 900ml', 7.99, 6.99, 60, 20, 0.90, 'Soya', '2024-04-01', '2025-04-01', 1, 1, '2025-05-15 19:29:22'),
(6, 'Leite Integral', 'Leite longa vida 1L', 4.79, NULL, 3, 10, 1.00, 'Italac', '2024-01-01', '2025-01-01', 1, 1, '2025-05-15 19:29:22'),
(7, 'Coca-Cola 2L', 'Refrigerante sabor cola', 9.99, 8.49, 12, 10, 2.00, 'Coca-Cola', '2024-05-01', '2025-05-01', 2, 1, '2025-05-15 19:29:22'),
(8, 'Guaraná Antártica 2L', 'Refrigerante sabor guaraná', 8.49, 7.49, 30, 10, 2.00, 'Ambev', '2024-05-01', '2025-05-01', 2, 1, '2025-05-15 19:29:22'),
(9, 'Água Mineral sem Gás 500ml', 'Água mineral natural', 1.99, NULL, 100, 30, 0.50, 'Crystal', '2024-04-10', '2025-04-10', 2, 1, '2025-05-15 19:29:22'),
(10, 'Cerveja Pilsen 350ml', 'Lata de cerveja pilsen', 3.49, 2.99, 50, 20, 0.35, 'Skol', '2024-03-15', '2025-03-15', 2, 1, '2025-05-15 19:29:22'),
(11, 'Sabonete Dove', 'Sabonete hidratante 90g', 3.29, NULL, 25, 10, 0.09, 'Dove', '2024-01-05', '2026-01-05', 3, 1, '2025-05-15 19:29:22'),
(12, 'Sabonete Dove', 'Sabonete Dove com leite de coco', 3.49, 2.99, 18, 10, 0.09, 'Dove', '2024-01-10', '2026-01-10', 3, 1, '2025-05-15 19:29:22'),
(13, 'Creme Dental Colgate', 'Creme dental tripla ação 90g', 4.99, NULL, 40, 15, 0.09, 'Colgate', '2024-02-10', '2026-02-10', 3, 1, '2025-05-15 19:29:22'),
(14, 'Shampoo Seda', 'Shampoo anticaspa 325ml', 9.90, NULL, 10, 10, 0.33, 'Seda', '2024-01-20', '2026-01-20', 3, 1, '2025-05-15 19:29:22'),
(15, 'Detergente Ypê', 'Detergente neutro 500ml', 2.50, 2.20, 80, 20, 0.50, 'Ypê', '2024-03-01', '2025-03-01', 4, 1, '2025-05-15 19:29:22'),
(16, 'Água Sanitária', 'Água sanitária 1L', 3.99, 3.49, 15, 10, 1.00, 'Qboa', '2024-04-01', '2026-04-01', 4, 1, '2025-05-15 19:29:22'),
(17, 'Esponja Multiuso', 'Pacote com 3 esponjas multiuso', 4.29, NULL, 35, 10, 0.10, 'Scotch-Brite', '2024-03-01', '2026-03-01', 5, 1, '2025-05-15 19:29:22'),
(18, 'Panela Antiaderente', 'Panela de 24cm com tampa de vidro', 79.90, 69.90, 5, 5, 1.20, 'Tramontina', '2023-12-01', NULL, 5, 1, '2025-05-15 19:29:22'),
(19, 'Vassoura de Nylon', 'Vassoura com cabo de madeira', 12.90, NULL, 10, 10, 0.80, 'Bettanin', '2024-03-01', NULL, 5, 1, '2025-05-15 19:29:22'),
(20, 'Papel Higiênico 12 rolos', 'Pacote com 12 rolos de folha dupla', 17.90, 15.90, 25, 10, 1.00, 'Neve', '2024-02-01', NULL, 3, 1, '2025-05-15 19:29:22'),
(21, 'Macarrão Espaguete', 'Macarrão tipo espaguete 500g', 4.99, NULL, 60, 20, 0.50, 'Renata', '2024-04-01', '2026-04-01', 1, 1, '2025-05-15 19:29:22'),
(22, 'Açúcar Refinado', 'Pacote de 1kg de açúcar refinado', 3.89, 3.29, 45, 20, 1.00, 'União', '2024-04-10', '2026-04-10', 1, 1, '2025-05-15 19:29:22'),
(23, 'Café Torrado e Moído 500g', 'Café tradicional em pó', 15.90, NULL, 20, 10, 0.50, 'Melitta', '2024-04-01', '2025-04-01', 1, 1, '2025-05-15 19:29:22'),
(24, 'Farinha de Trigo 1kg', 'Farinha tipo 1', 4.49, 3.99, 50, 25, 1.00, 'Dona Benta', '2024-03-15', '2025-03-15', 1, 1, '2025-05-15 19:29:22'),
(25, 'Achocolatado em Pó 400g', 'Pó para preparo de bebida achocolatada', 7.99, 6.99, 10, 10, 0.40, 'Nescau', '2024-03-01', '2025-03-01', 1, 1, '2025-05-15 19:29:22'),
(26, 'Sal Refinado 1kg', 'Sal refinado para cozinha', 2.49, NULL, 80, 20, 1.00, 'Cisne', '2024-02-01', '2026-02-01', 1, 1, '2025-05-15 19:29:22'),
(27, 'Sabão em Pó 1kg', 'Sabão para roupas', 11.90, 9.90, 10, 15, 1.00, 'Omo', '2024-02-01', '2026-02-01', 4, 1, '2025-05-15 19:29:22'),
(28, 'Amaciante de Roupas 2L', 'Perfume duradouro', 14.90, 12.90, 8, 10, 2.00, 'Comfort', '2024-03-01', '2026-03-01', 4, 1, '2025-05-15 19:29:22');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
