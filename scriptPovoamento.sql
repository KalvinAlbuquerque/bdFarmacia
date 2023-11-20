USE mydb; 

#Inserindo dados em Classificação
INSERT INTO Classificacao (NOME) VALUES ('Medicamentos de Venda Livre');
INSERT INTO Classificacao (NOME) VALUES ('Medicamentos Controlados');
INSERT INTO Classificacao (NOME) VALUES ('Produtos de Higiene Pessoal');
INSERT INTO Classificacao (NOME) VALUES ('Dermocosméticos');
INSERT INTO Classificacao (NOME) VALUES ('Suplementos Nutricionais');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Cuidados com o Bebê');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Saúde Bucal');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Saúde Ocular');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Saúde Feminina');
INSERT INTO Classificacao (NOME) VALUES ('Acessórios Ortopédicos');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Emagrecimento');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Saúde Capilar');
INSERT INTO Classificacao (NOME) VALUES ('Testes Diagnósticos');
INSERT INTO Classificacao (NOME) VALUES ('Acessórios para Primeiros Socorros');
INSERT INTO Classificacao (NOME) VALUES ('Produtos para Cuidados com os Pés');

#Inserindo dados em Subclassificacao
INSERT INTO Subclassifacao (NOME, Classificacao_idClassificacao) VALUES
('Antibiótico', 1),
('Analgésico', 1),
('Anti-inflamatório', 1),
('Antitérmico', 1),
('Antidepressivo', 1),
('Antialérgico', 1),
('Antiviral', 1),
('Anti-hipertensivo', 1),
('Antiácido', 1),
('Laxante', 1),
('Anti-histamínico', 1),
('Anticoagulante', 1),
('Broncodilatador', 1),
('Antifúngico', 1),
('Diurético', 1),
('Vitaminas', 5),
('Minerais', 5),
('Proteínas', 5),
('Ácidos Graxos', 5),
('Aminoácidos', 5),
('Enzimas', 5),
('Fibras', 5),
('Fraldas Descartáveis', 6),
('Lenços Umidecidos', 6),
('Shampoo', 6),
('Sabonete', 6),
('Creme para Assaduras', 6),
('Creme Dental', 7),
('Enxaguante Bucal', 7),
('Fio Dental', 7),
('Colírios', 8),
('Lágrimas Artificiais', 8),
('Absorventes', 9),
('Protetores Diários', 9),
('Duchas Íntimas', 9),
('Joelheiras', 10),
('Tornozeleiras', 10),
('Palmilhas Ortopédicas', 10),
('Emagrecedores Naturais', 11),
('Inibidores de Apetite', 11),
('Shampoos Especiais', 12),
('Condicionadores', 12),
('Máscaras Capilares', 12),
('Testes de Gravidez', 13),
('Testes de Ovulação', 13),
('Curativos Adesivos', 14),
('Gaze Estéril', 14),
('Álcool Antisséptico', 14),
('Tesoura para Unhas', 14),
('Cremes Hidratantes', 15),
('Produtos para Calos e Calosidades', 15),
('Esfoliantes para os Pés', 15);



#Inserindo dados em estados
INSERT INTO Estado (NOME) VALUES
('Acre'),
('Alagoas'),
('Amapá'),
('Amazonas'),
('Bahia'),
('Ceará'),
('Distrito Federal'),
('Espírito Santo'),
('Goiás'),
('Maranhão'),
('Mato Grosso'),
('Mato Grosso do Sul'),
('Minas Gerais'),
('Pará'),
('Paraíba');

#Inserindo dados em cidade
INSERT INTO Cidade (NOME, Estado_idEstado) VALUES
('Rio Branco', 1),         
('Maceió', 2),              
('Macapá', 3),              
('Manaus', 4),             
('Salvador', 5),            
('Fortaleza', 6),           
('Brasília', 7),            
('Vitória', 8),             
('Goiânia', 9),             
('São Luís', 10),           
('Cuiabá', 11),           
('Campo Grande', 12),       
('Belo Horizonte', 13),     
('Belém', 14),             
('João Pessoa', 15);       

#Inserindo dados em fornecedores
INSERT INTO Fornecedor (CNPJ, NOME_FANTASIA, RAZAO_SOCIAL, INSCRICAO_ESTADUAL, ENDERECO, BAIRRO, CEP, TELEFONE, EMAIL, Cidade_idCidade) VALUES
('12345578101234', 'Farmácia Bem-Estar', 'Distribuidora de Medicamentos Bem-Estar Ltda.', '123456789', 'Rua das Flores, 123', 'Centro', '12345-678', '(11) 1234-5678', 'contato@farmaciabemestar.com', 1),
('23456789012345', 'Hospital São Lucas', 'Hospital São Lucas S/A', '987654351', 'Avenida da Saúde, 456', 'Bairro Saúde', '54321-876', '(22) 9876-5432', 'contato@hospitalsaolucas.com', 2),
('34567890123456', 'Laboratório Vida&Saúde', 'Laboratório Vida&Saúde Ltda.', '654921987', 'Travessa dos Testes, 789', 'Laboratórios', '98765-432', '(33) 1234-5678', 'contato@laboratoriovidasaude.com', 3),
('45678901234567', 'Distribuidora FarmaTop', 'Distribuidora FarmaTop EIRELI', '123983356', 'Rua Principal, 987', 'Distrito Industrial', '76543-210', '(44) 8765-4321', 'contato@farma-top.com', 4),
('56789012345678', 'Ótica Visão Clara', 'Ótica Visão Clara Ltda.', '987644321', 'Avenida dos Óculos, 456', 'Vista Linda', '87654-321', '(55) 9876-5432', 'contato@oticavisaoclarat.com', 5),
('67890123456789', 'Dental Sorridente', 'Dental Sorridente EIRELI', '123456889', 'Rua dos Dentistas, 123', 'Sorriso Feliz', '23456-789', '(66) 1234-5678', 'contato@dentalsorridente.com', 6),
('78901234567890', 'Beleza&Estilo Cosméticos', 'Beleza&Estilo Indústria de Cosméticos Ltda.', '987664321', 'Avenida da Beleza, 456', 'Centro Estético', '87654-321', '(77) 9876-5432', 'contato@belezaestilo.com', 7),
('89012345678901', 'Suplementos Naturais', 'Suplementos Naturais S/A', '123456787', 'Rua das Plantas, 123', 'Natureza Viva', '54321-098', '(88) 1234-5678', 'contato@suplementosnaturais.com', 8),
('90123456789012', 'Baby Care Produtos Infantis', 'Baby Care Indústria de Produtos Infantis EIRELI', '987694321', 'Avenida dos Bebês, 456', 'Berçário Encantado', '43210-987', '(99) 9876-5432', 'contato@babycare.com', 9),
('01234567890123', 'Farmácia do Bairro', 'Distribuidora de Medicamentos do Bairro Ltda.', '123446789', 'Rua Principal, 987', 'Bairro Tranquilo', '09876-543', '(10) 1234-5678', 'contato@farmaciabairro.com', 10),
('98765432101234', 'Drogaria São Lucas', 'São Lucas Medicamentos Ltda.', '123456779', 'Rua das Flores, 456', 'Centro', '54321-987', '11 98765-4321', 'contato@saolucas.com', 1),
('22334455667788', 'Distribuidora Saúde Total', 'Distribuidora Saúde Total S/A', '982654321', 'Avenida da Cura, 456', 'Bairro Novo', '98765-432', '22 87654-3210', 'contato@distribuidorasaude.com', 2),
('33445566778899', 'Produtos Médicos Excellence', 'Produtos Médicos Excellence Ltda.', '654321987', 'Rua da Cautela, 789', 'Vila Esperança', '98765-123', '33 76543-2109', 'contato@excellencemedical.com', 3),
('44556677889900', 'Bem-Estar Farmacêutico', 'Bem-Estar Farmacêutico EIRELI', '123983456', 'Avenida do Bem-Estar, 987', 'Jardim Saúde', '56789-012', '44 65432-1098', 'contato@bemestarfar.com', 4),
('55667788990011', 'Saúde & Cia', 'Saúde & Cia Distribuidora de Medicamentos', '987444321', 'Rua da Esperança, 876', 'Centro', '87654-321', '55 54321-0987', 'contato@saudecia.com', 5),
('87654321012345', 'Distribuidora Vida Plena', 'Vida Plena Distribuidora de Medicamentos S/A', '987654323', 'Avenida da Saúde, 789', 'Bairro Novo', '76543-210', '22 87654-3210', 'contato@vidaplena.com', 2),
('76543210923456', 'Farmácia Popular', 'Farmácia Popular Ltda.', '654322987', 'Rua da Esperança, 123', 'Vila Esperança', '87654-321', '33 76543-2109', 'contato@farmaciapopular.com', 3),
('65432109834567', 'Saúde Total', 'Saúde Total EIRELI', '123987456', 'Avenida do Bem-Estar, 987', 'Jardim Saúde', '56789-012', '44 65432-1098', 'contato@saudeeireli.com', 4),
('54321098745678', 'PharmaVida', 'PharmaVida Distribuidora de Medicamentos', '987654341', 'Rua da Paz, 876', 'Centro', '87654-321', '55 54321-0987', 'contato@pharmavida', 5);



#Inserindo dados em fabricantes
INSERT INTO Fabricante (NOME_FANTASIA, RAZAO_SOCIAL, CNPJ) VALUES
('PharmaTech', 'PharmaTech Indústria Farmacêutica Ltda.', '12345678901234'),
('BioVida', 'BioVida Produtos Naturais S/A', '23456789012345'),
('MediGen', 'MediGen Laboratórios Ltda.', '34567890123456'),
('Vitafarma', 'Vitafarma Indústria e Comércio de Vitaminas EIRELI', '45678901234567'),
('Cosmética Brasil', 'Cosmética Brasil Ltda.', '56789012345678'),
('Farmanova', 'Farmanova Produtos Farmacêuticos S/A', '67890123456789'),
('BioSaúde', 'BioSaúde Indústria e Comércio de Produtos Naturais Ltda.', '78901234567890'),
('TechMed', 'TechMed Equipamentos Médicos Ltda.', '89012345678901'),
('NutriPharma', 'NutriPharma Indústria de Suplementos Alimentares EIRELI', '90123456789012'),
('DermoCosmética', 'DermoCosmética Indústria de Cosméticos Ltda.', '98765432101234'),
('LabVet', 'LabVet Laboratórios Veterinários S/A', '87654321012345'),
('GenBio', 'GenBio Genética e Biotecnologia Ltda.', '76543210923456'),
('SupraMed', 'SupraMed Produtos Médicos e Hospitalares EIRELI', '65432109834567'),
('NaturePharma', 'NaturePharma Indústria Farmacêutica Natural Ltda.', '54321098745678'),
('DentalTech', 'DentalTech Indústria de Produtos Odontológicos S/A', '43210987654321');


#Inserindo Produtos
INSERT INTO Produto (NOME, VALOR, Subclassifacao_idSubclassifacao, Fornecedor_idFornecedor, Fabricante_idFabricante, Quantidade) VALUES
('Paracetamol 500mg', 10.99, 1, 1, 1, 100),
('Ibuprofeno 400mg', 15.50, 2, 2, 2, 150),
('Omeprazol 20mg', 20.25, 3, 3, 3, 80),
('Dipirona 500mg', 8.75, 4, 4, 4, 120),
('Vitamina C 1000mg', 25.99, 5, 5, 5, 90),
('Amoxicilina 500mg', 18.60, 6, 6, 6, 70),
('Soro Fisiológico 0.9%', 5.50, 7, 7, 7, 200),
('Álcool em Gel 70%', 12.99, 8, 8, 8, 50),
('Curativo Adesivo 10x10cm', 7.25, 9, 9, 9, 180),
('Fralda Descartável P', 29.90, 10, 10, 10, 60),
('Shampoo Anticaspa', 15.75, 11, 11, 11, 100),
('Escova Dental Infantil', 3.99, 12, 12, 12, 120),
('Preservativo Kit com 3', 6.50, 13, 13, 13, 90),
('Termômetro Digital', 19.99, 14, 14, 14, 30),
('Sabonete Líquido Neutro', 8.25, 15, 15, 15, 140),
('Luvas de Latex Descartáveis', 12.50, 16, 16, 2, 80),
('Soro Antiofídico', 150.00, 17, 17, 14, 10),
('Anti-inflamatório em Gel', 22.75, 18, 18, 1, 45),
('Creme Hidratante Facial', 30.00, 19, 19, 2, 70),
('Inalador Nebulizador', 75.50, 20, 15, 1, 25);

#Inserindo dados em usuários
INSERT INTO Usuario (LOGIN, SENHA) VALUES
('admin', 'admin@123'),
('john_doe', 'doe#2023'),
('alice_smith', 'alice_pass'),
('bob_jones', 'jones123'),
('laura_miller', 'laura_pass'),
('mark_evans', 'evans2023'),
('sarah_brown', 'sarah_pass123'),
('michael_clark', 'clark@2023'),
('emma_taylor', 'emma_pass'),
('ryan_wood', 'wood2023'),
('olivia_wilson', 'olivia_pass'),
('david_white', 'white_pass123'),
('hannah_lee', 'hannah@2023'),
('peter_carter', 'peter_pass'),
('amy_robinson', 'amy123'),
('joaosilva', 'Senha@123'),
('mariagomes', 'SecurePass456'),
('lucasrocha', 'Secret123word'),
('anacosta', 'P@ssw0rd!'),
('pedroalmeida', 'Pass123word'),
('carlasantos', 'StrongPass789'),
('marcoslima', 'SecureP@ss1'),
('julianapereira', 'P@ssw0rd123'),
('felipeoliveira', 'SecurePwd!456'),
('patriciacarvalho', 'Pwd@987'),
('gustavocosta', 'StrongPwd123'),
('biancamartins', 'Martins#Pass'),
('eduardosilveira', 'SilveiraPwd@123'),
('larissarodrigues', 'L@rissa789'),
('robertocarlos', 'R0b3rt0C@rl0s');

#Inserindo dados em Pessoa
INSERT INTO Pessoa (NOME, CPF, RG, ENDERECO, CEP, BAIRRO, TELEFONE, EMAIL, Usuario_idUsuario) VALUES
('João Silva', '12345478101', '987654321', 'Rua A, 123', '12345678', 'Centro', '111111111', 'joao@email.com', 1),
('Maria Oliveira', '23432789012', '876543211', 'Avenida B, 456', '23456789', 'Bairro X', '222222222', 'maria@email.com', 2),
('Carlos Santos', '34567390123', '765432101', 'Travessa C, 789', '34567890', 'Bairro Y', '333333333', 'carlos@email.com', 3),
('Ana Pereira', '45678905234', '654321091', 'Rua D, 567', '45678901', 'Bairro Z', '444444444', 'ana@email.com', 4),
('Paulo Souza', '56789016345', '543210981', 'Avenida E, 890', '56789012', 'Centro', '555555555', 'paulo@email.com', 5),
('Fernanda Lima', '67893123456', '432109871', 'Travessa F, 123', '67890123', 'Bairro A', '666666666', 'fernanda@email.com', 6),
('Roberto Castro', '78907234567', '321098761', 'Rua G, 456', '78901234', 'Bairro B', '777777777', 'roberto@email.com', 7),
('Juliana Rocha', '89019845678', '210987651', 'Avenida H, 789', '89012345', 'Bairro C', '888888888', 'juliana@email.com', 8),
('Luiz Almeida', '90123026789', '109876541', 'Travessa I, 123', '90123456', 'Bairro D', '999999999', 'luiz@email.com', 9),
('Patrícia Santos', '01924567890', '098765431', 'Rua J, 456', '01234567', 'Centro', '1010101010', 'patricia@email.com', 10),
('Eduardo Costa', '12345638909', '1111111111', 'Avenida K, 789', '12345678', 'Bairro E', '1111111111', 'eduardo@email.com', 11),
('Mariana Lima', '23456701098', '1212121212', 'Travessa L, 123', '23456789', 'Bairro F', '1212121212', 'mariana@email.com', 12),
('Ricardo Oliveira', '34167890187', '1313131313', 'Rua M, 456', '34567890', 'Bairro G', '1313131313', 'ricardo@email.com', 13),
('Camila Castro', '45668921276', '1414141414', 'Avenida N, 789', '45678901', 'Centro', '1414141414', 'camila@email.com', 14),
('Gabriel Souza', '56739112365', '1515151515', 'Travessa O, 123', '56789012', 'Bairro H', '1515151515', 'gabriel@email.com', 15),
('Mateus Oliveira', '98865432101', '1616161616', 'Rua P, 123', '54321-098', 'Centro', '1616161616', 'mateus@email.com', 16),
('Leticia Silva', '87614221012', '1717171717', 'Avenida Q, 456', '21098-765', 'Bairro O', '1717171717', 'leticia@email.com', 17),
('Ricardo Santos', '76141010923', '1818181818', 'Rua R, 789', '87654-321', 'Vila N', '1818181818', 'ricardo@email.com', 18),
('Gabriela Lima', '65432009834', '1919191919', 'Avenida S, 987', '43210-987', 'Bairro M', '1919191919', 'gabriela@email.com', 19),
('Fernando Souza', '54320198745', '2020202020', 'Rua T, 234', '10987-654', 'Centro', '2020202020', 'fernando@email.com', 20),
('Isabella Rocha', '43210087656', '2121212121', 'Avenida U, 123', '76543-210', 'Bairro L', '2121212121', 'isabella@email.com', 21),
('Lucas Martins', '32109870967', '2222222222', 'Rua V, 456', '21098-765', 'Vila K', '2222222222', 'lucas@email.com', 22),
('Mariana Costa', '21098760408', '2323232323', 'Avenida W, 789', '87654-321', 'Bairro J', '2323232323', 'mariana@email.com', 23),
('Rodrigo Oliveira', '10985650389', '2424242424', 'Rua X, 123', '54321-098', 'Centro', '2424242424', 'rodrigo@email.com', 24),
('Julia Lima', '09876543299', '2525252525', 'Avenida Y, 456', '21098-765', 'Bairro I', '2525252525', 'julia@email.com', 25),
('Alexandre Souza', '9876580251', '2626262626', 'Rua Z, 123', '87654-321', 'Vila H', '2626262626', 'alexandre@email.com', 26),
('Camila Santos', '87654025022', '2727272727', 'Avenida AA, 456', '43210-987', 'Bairro G', '2727272727', 'camila@email.com', 27),
('Daniel Rocha', '76542210923', '2828282828', 'Rua BB, 789', '10987-654', 'Centro', '2828282828', 'daniel@email.com', 28),
('Larissa Oliveira', '65433109834', '2929292929', 'Avenida CC, 987', '54321-098', 'Bairro FF', '2929292929', 'larissa@email.com', 29),
('Leandro Souza', '54321058745', '3030303030', 'Rua DD, 234', '21098-765', 'Vila EE', '3030303030', 'leandro@email.com', 30);


#Inserindo dados em CRF
INSERT INTO CRF (NUMERO_CRF, DATA_EXPEDICAO, DATA_VENCIMENTO, NUMERO_DIPLOMA, INSTITUICAO_FORMACAO) VALUES
('123456/SP', '2018-05-15', '2023-05-15', 'D123456', 'Faculdade de Farmácia ABC'),
('234567/MG', '2019-08-20', '2024-08-20', 'D234567', 'Universidade de Medicina XYZ'),
('345678/RJ', '2020-12-10', '2025-12-10', 'D345678', 'Instituto Nacional de Saúde DEF'),
('456789/RS', '2017-04-28', '2022-04-28', 'D456789', 'Escola de Ciências da Saúde GHI'),
('567890/SC', '2021-06-05', '2026-06-05', 'D567890', 'Faculdade de Farmácia e Bioquímica JKL'),
('678901/BA', '2016-02-12', '2021-02-12', 'D678901', 'Centro Universitário de Saúde MNO'),
('789012/PR', '2018-10-01', '2023-10-01', 'D789012', 'Escola de Medicina PQR'),
('890123/GO', '2019-11-17', '2024-11-17', 'D890123', 'Instituto de Pesquisa em Saúde STU'),
('901234/PE', '2022-07-08', '2027-07-08', 'D901234', 'Faculdade de Ciências Farmacêuticas VWX'),
('012345/CE', '2016-09-23', '2021-09-23', 'D012345', 'Universidade Estadual de Farmácia YZA'),
('123456/AM', '2020-03-30', '2025-03-30', 'D123456', 'Centro de Estudos Biomédicos BCD'),
('234567/MT', '2017-01-14', '2022-01-14', 'D234567', 'Escola Superior de Saúde EFG'),
('345678/AL', '2019-04-02', '2024-04-02', 'D345678', 'Faculdade de Medicina HIJ'),
('456789/TO', '2018-08-11', '2023-08-11', 'D456789', 'Instituto de Saúde Mental KLM'),
('567890/PA', '2021-12-05', '2026-12-05', 'D567890', 'Faculdade de Farmácia e Bioquímica NOP');

#Inserindo dados em Cliente
INSERT INTO Cliente (Pessoa_idPessoa, CONVENIO, SCORE) VALUES
(1, 'Plano Saúde A', 750),
(2, 'Seguro Vida B', 680),
(3, 'Plano Odontológico C', 800),
(4, 'Seguro Residencial D', 720),
(5, 'Plano Saúde E', 690),
(6, 'Seguro Auto F', 780),
(7, 'Plano Odontológico G', 710),
(8, 'Seguro Vida H', 820),
(9, 'Plano Saúde I', 700),
(10, 'Seguro Residencial J', 760),
(11, 'Seguro Auto K', 830),
(12, 'Plano Odontológico L', 740),
(13, 'Plano Saúde M', 770),
(14, 'Seguro Vida N', 810),
(15, 'Seguro Residencial O', 730);

#Inserindo dados em funcionários
INSERT INTO Funcionario (Pessoa_idPessoa, CRF_NUMERO_CRF) VALUES
(16, '123456/SP'),
(17, NULL),
(18, '234567/MG'),
(19, NULL),
(20, '567890/PA'),
(21, NULL),
(22, '012345/CE'),
(23, NULL),
(24, '678901/BA'),
(25, NULL),
(26, '901234/PE'),
(27, NULL),
(28, '890123/GO'),
(29, NULL),
(30, '789012/PR');


#Inserindo dados em nota fiscal
INSERT INTO NotaFiscal (VALOR_TOTAL, DATA_EMISSAO) VALUES
(150.75, '2023-01-15'),
(220.50, '2023-02-22'),
(75.30, '2023-03-10'),
(500.00, '2023-04-05'),
(120.25, '2023-05-12'),
(300.60, '2023-06-18'),
(80.90, '2023-07-23'),
(450.75, '2023-08-08'),
(200.00, '2023-09-14'),
(90.50, '2023-10-20'),
(175.25, '2023-11-25'),
(280.40, '2023-12-01'),
(150.75, '2024-01-07'),
(220.50, '2024-02-14'),
(75.30, '2024-03-20'),
(500.00, '2024-04-25'),
(120.25, '2024-05-01'),
(300.60, '2024-06-07'),
(80.90, '2024-07-13'),
(450.75, '2024-08-19'),
(200.00, '2024-09-24'),
(90.50, '2024-10-30'),
(175.25, '2024-11-05'),
(280.40, '2024-12-11'),
(150.75, '2025-01-17'),
(220.50, '2025-02-23'),
(75.30, '2025-03-01'),
(500.00, '2025-04-07'),
(120.25, '2025-05-13'),
(300.60, '2025-06-19'),
(100.00, '2023-01-01'),
(150.50, '2023-01-02'),
(200.75, '2023-01-03'),
(75.30, '2023-01-04'),
(120.25, '2023-01-05'),
(90.80, '2023-01-06'),
(180.60, '2023-01-07'),
(250.90, '2023-01-08'),
(300.25, '2023-01-09'),
(80.40, '2023-01-10'),
(130.75, '2023-01-11'),
(95.20, '2023-01-12'),
(220.30, '2023-01-13'),
(190.50, '2023-01-14'),
(110.90, '2023-01-15'),
(105.75, '2023-01-16'),
(135.40, '2023-01-17'),
(88.20, '2023-01-18'),
(160.45, '2023-01-19'),
(75.60, '2023-01-20'),
(210.95, '2023-01-21'),
(180.30, '2023-01-22'),
(95.80, '2023-01-23'),
(145.25, '2023-01-24'),
(120.60, '2023-01-25'),
(200.20, '2023-01-26'),
(170.40, '2023-01-27'),
(92.75, '2023-01-28'),
(140.90, '2023-01-29'),
(185.10, '2023-01-30');

#Inserindo dados em nota fiscal de entrada
INSERT INTO NotaFiscalEntrada (NotaFiscal_IDNOTAFISCAL, Fornecedor_idFornecedor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16,1),
(17,1),
(18,1),
(19,5),
(20,5),
(21,2),
(22,1),
(23,9),
(24,10),
(25,8),
(26,10),
(27,3),
(28,9),
(29,6),
(30,1);

#Inserindo dados em nota fiscal de saída
INSERT INTO NotaFiscalSaida (NotaFiscal_IDNOTAFISCAL, Cliente_Pessoa_idFuncionario, Funcionario_Pessoa_idFuncionario) VALUES
(31, 1, 20),
(32, 2, 17),
(33, 3, 18),
(34, 4, 19),
(35, 5, 23),
(36, 6, 21),
(37, 7, 22),
(38, NULL, 19),
(39, 9, 24),
(40, 10, 25),
(41, NULL, 26),
(42, 12, 27),
(43, 13, 17),
(44, 14, 17),
(45, 15,23),
(46, 1, 21),
(47, 2, 22),
(48, NULL, 23),
(49, 11, 24),
(50, 12, 25),
(51, NULL, 26),
(52, 13, 25),
(53, 1, 17),
(54, NULL, 19),
(55, 2, 19),
(56, 6, 22),
(57, NULL, 22),
(58, 8, 23),
(59, 9, 21),
(60, 3, 17);

#Inserindo dados em receita médica
INSERT INTO ReceitaMedica (CRM_MEDICO, NOME_HOSPITAL, DATA_EMISSAO, VALIDADE, NOME_MEDICO, NotaFiscalSaida_NotaFiscal_IDNOTAFISCAL)
VALUES
('12345/SP', 'Hospital São Lucas', '2023-01-15', '2023-02-15', 'Dr. Carlos Silva', 31),
('56789/RJ', 'Hospital das Clínicas', '2023-02-01', '2023-03-01', 'Dra. Ana Santos', 32),
('43210/MG', 'Hospital Santa Maria', '2023-02-15', '2023-03-15', 'Dr. José Oliveira', 33),
('98765/RS', 'Hospital Nossa Senhora Aparecida', '2023-03-01', '2023-04-01', 'Dra. Maria Pereira', 34),
('23456/SP', 'Hospital Albert Einstein', '2023-03-15', '2023-04-15', 'Dr. Roberto Almeida', 35),
('78901/RJ', 'Hospital Samaritano', '2023-04-01', '2023-05-01', 'Dra. Juliana Lima', 36),
('34567/MG', 'Hospital das Ondas', '2023-04-15', '2023-05-15', 'Dr. Ricardo Martins', 37),
('89012/RS', 'Hospital do Coração', '2023-05-01', '2023-06-01', 'Dra. Fernanda Costa', 38),
('45678/SP', 'Hospital São José', '2023-05-15', '2023-06-15', 'Dr. André Rocha', 39),
('90123/RJ', 'Hospital das Oliveiras', '2023-06-01', '2023-07-01', 'Dra. Patricia Santos', 40),
('56789/MG', 'Hospital Santa Cruz', '2023-06-15', '2023-07-15', 'Dr. Felipe Oliveira', 41),
('01234/RS', 'Hospital Beneficente', '2023-07-01', '2023-08-01', 'Dra. Camila Pereira', 42),
('67890/SP', 'Hospital Santa Fé', '2023-07-15', '2023-08-15', 'Dr. Victor Almeida', 43),
('54321/RJ', 'Hospital Nossa Esperança', '2023-08-01', '2023-09-01', 'Dra. Vanessa Lima', 44),
('98765/MG', 'Hospital do Saber', '2023-08-15', '2023-09-15', 'Dr. Guilherme Martins', 45),
('54321/SP', 'Hospital São Francisco', '2023-09-01', '2023-10-01', 'Dra. Isabela Alves', 46);



#Inserindo os tipos de pagamento
INSERT INTO TipoPagamento(NOME) VALUES
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Transferência Bancária'),
('Pix'),
('Cheque');

#Inserindo dados na tabela NotaFiscal_has_TipoPagamento
INSERT INTO NotaFiscal_has_TipoPagamento (NotaFiscal_IDNOTAFISCAL, TipoPagamento_idTipoPagamento) VALUES
(1,1),
(2,3),
(3,4),
(4,5),
(5,1),
(6,2),
(7, 2),
(8, 6),
(9, 1),
(10, 4),
(11, 3),
(12, 5),
(13, 2),
(14, 1),
(15, 3),
(16, 4),
(17, 5),
(18, 1),
(19, 6),
(20, 3),
(21, 4),
(22, 5),
(23, 1),
(24, 2),
(25, 3),
(26, 4),
(27, 5),
(28, 1),
(29, 6),
(30, 3),
(31, 2),
(32, 6),
(33, 1),
(34, 4),
(35, 3),
(36, 5),
(37, 2),
(38, 1),
(39, 3),
(40, 4),
(41, 5),
(42, 1),
(43, 6),
(44, 3),
(45, 4),
(46, 5),
(47, 1),
(48, 2),
(49, 3),
(50, 4),
(51, 2),
(52, 6),
(53, 1),
(54, 4),
(55, 3),
(56, 5),
(57, 2),
(58, 1),
(59, 3),
(60, 4);




#Inserindo na tabela NotaFiscalSaida_has_Produto 
INSERT INTO NotaFiscalSaida_has_Produto (NotaFiscalSaida_NotaFiscal_IDNOTAFISCAL, Produto_idProduto, VALOR, QUANTIDADE) VALUES 
(31, 1, 100.00, 2), 
(31, 2, 150.50, 1), 
(32, 3, 200.75, 3), 
(32, 4, 75.30, 5), 
(33, 5, 120.25, 2), 
(33, 6, 90.80, 4), 
(34, 7, 180.60, 1), 
(34, 8, 250.90, 3), 
(35, 9, 300.25, 2), 
(35, 10, 80.40, 1), 
(36, 11, 130.75, 4), 
(36, 12, 95.20, 2), 
(37, 13, 220.30, 3), 
(37, 14, 190.50, 1), 
(38, 15, 110.90, 5), 
(38, 16, 105.75, 2), 
(39, 17, 135.40, 1), 
(39, 18, 88.20, 3), 
(40, 19, 160.45, 2), 
(40, 20, 75.60, 4), 
(41, 1, 210.95, 3), 
(41, 2, 180.30, 2), 
(42, 3, 95.80, 1), 
(42, 4, 145.25, 3), 
(43, 5, 120.60, 2), 
(43, 6, 200.20, 4), 
(44, 7, 170.40, 1), 
(44, 8, 92.75, 2), 
(45, 9, 140.90, 3), 
(45, 10, 185.10, 1), 
(46, 11, 130.75, 4), 
(46, 12, 95.20, 2), 
(47, 13, 220.30, 3), 
(47, 14, 190.50, 1), 
(48, 15, 110.90, 5), 
(48, 16, 105.75, 2), 
(49, 17, 135.40, 1), 
(49, 18, 88.20, 3), 
(50, 19, 160.45, 2), 
(50, 20, 75.60, 4), 
(51, 1, 210.95, 3), 
(51, 2, 180.30, 2), 
(52, 3, 95.80, 1), 
(52, 4, 145.25, 3), 
(53, 5, 120.60, 2), 
(53, 6, 200.20, 4), 
(54, 7, 170.40, 1), 
(54, 8, 92.75, 2), 
(55, 9, 140.90, 3), 
(55, 10, 185.10, 1), 
(56, 11, 100.00, 2), 
(56, 12, 150.50, 1), 
(57, 13, 200.75, 3), 
(57, 14, 75.30, 5), 
(58, 15, 120.25, 2), 
(58, 16, 90.80, 4), 
(59, 17, 180.60, 1), 
(59, 18, 250.90, 3), 
(60, 19, 300.25, 2), 
(60, 20, 80.40, 1);


#Inserindo dados na tabela Produto_has_NotaFiscalEntrada
INSERT INTO Produto_has_NotaFiscalEntrada (Produto_idProduto, NotaFiscalEntrada_NotaFiscal_IDNOTAFISCAL, VALOR, QUANTIDADE) VALUES
(1, 16, 150.75, 2),
(2, 17, 220.50, 3),
(3, 18, 75.30, 1),
(4, 16, 500.00, 5),
(5, 16, 120.25, 2),
(6, 16, 300.60, 4),
(7, 16, 80.90, 1),
(8, 17, 450.75, 3),
(9, 16, 200.00, 2),
(10, 16, 90.50, 1),
(11, 16, 175.25, 3),
(12, 17, 280.40, 2),
(13, 18, 150.75, 2),
(14, 19, 220.50, 3),
(15, 16, 75.30, 1),
(16, 16, 500.00, 5),
(17, 16, 120.25, 2),
(18, 16, 300.60, 4),
(19, 16, 80.90, 1),
(20, 16, 450.75, 3),
(2, 16, 200.00, 2),
(2, 16, 90.50, 1),
(3, 16, 175.25, 3),
(4, 16, 280.40, 2),
(5, 16, 150.75, 2),
(6, 16, 220.50, 3),
(7, 1, 75.30, 1),
(8, 1, 500.00, 5),
(9, 1, 120.25, 2),
(3, 1, 300.60, 4);