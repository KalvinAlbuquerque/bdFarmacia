#Letra A)Delete e Update
UPDATE Estado
SET NOME = 'Rio Grande do Sul'
WHERE idEstado = 16;

DELETE FROM Estado
WHERE idEstado = 16;

#Letra B) Select com like
SELECT NOME, idEstado 
FROM Estado
WHERE NOME LIKE 'Bahia';

#Letra C) Select com OrderBy
SELECT NOME, idEstado
FROM Estado
ORDER BY idEstado DESC;


#Letra D)Select com GROUP BY e HAVING
#Exibir os clientes que fizeram mais de uma compra
SELECT Pessoa.NOME, COUNT(NotaFiscalSaida.NotaFiscal_IDNOTAFISCAL)
FROM Cliente 
JOIN Pessoa ON Pessoa.idPessoa = Cliente.Pessoa_idPessoa
JOIN NotaFiscalSaida ON NotaFiscalSaida.Cliente_Pessoa_idCliente = Cliente.Pessoa_idPessoa
GROUP BY NotaFiscalSaida.Cliente_Pessoa_idCliente
HAVING COUNT(NotaFiscalSaida.Cliente_Pessoa_idCliente) >= 3;

#Letra E) Select com JOIN com duas tabelas
#Exibir o nome de todos os clientes
SELECT Pessoa.NOME
FROM Pessoa
JOIN Cliente ON Pessoa.idPessoa = Cliente.Pessoa_idPessoa;

#Letra F) Select com JOIN com três tabelas
#Exibir o nome do produto, da subclassificação e o nome do fornecedor
SELECT Produto.NOME, Subclassifacao.NOME, Fornecedor.NOME_FANTASIA
FROM Produto
JOIN Subclassifacao ON Produto.Subclassifacao_idSubclassifacao = Subclassifacao.idSubclassifacao
JOIN Fornecedor ON Fornecedor.idFornecedor = Produto.Fornecedor_idFornecedor;

#Letra G) Select com JOIN com quatro tabelas
#Exibir o nome do produto, da subclassificação, da classificação e o nome do fornecedor
SELECT Produto.NOME, Classificacao.NOME, Subclassifacao.NOME, Fornecedor.NOME_FANTASIA
FROM Produto
JOIN Subclassifacao ON Produto.Subclassifacao_idSubclassifacao = Subclassifacao.idSubclassifacao
JOIN Fornecedor ON Fornecedor.idFornecedor = Produto.Fornecedor_idFornecedor
JOIN Classificacao ON Classificacao.idClassificacao = Subclassifacao.idSubclassifacao;

#Letra H) Select com JOIN com no mínimo três tabelas, GROUP BY e HAVING
#Exiba o nome dos funcionários que realizaram mais de 3 vendas
SELECT COUNT(Pessoa.idPessoa), Pessoa.NOME
FROM Funcionario
JOIN NotaFiscalSaida ON NotaFiscalSaida.Funcionario_Pessoa_idFuncionario = Funcionario.Pessoa_idPessoa
JOIN Pessoa ON Pessoa.idPessoa = Funcionario.Pessoa_idPessoa
GROUP BY NotaFiscalSaida.Funcionario_Pessoa_idFuncionario
HAVING COUNT(Pessoa.idPessoa) > 3;

#Letra I) Select com JOIN com no mínimo três tabelas, GROUP BY
#Exiba a quantidade de notas fiscais agrupando-as por tipo de pagamento
SELECT COUNT(NotaFiscal.IDNOTAFISCAL), TipoPagamento.NOME
FROM NotaFiscal
JOIN NotaFiscal_has_TipoPagamento ON NotaFiscal_has_TipoPagamento.NotaFiscal_IDNOTAFISCAL = NotaFiscal.IDNOTAFISCAL
JOIN TipoPagamento ON TipoPagamento.idTipoPagamento = NotaFiscal_has_TipoPagamento.TipoPagamento_idTipoPagamento
GROUP BY(TipoPagamento.idTipoPagamento);

#Letra J) Select com JOIN com no mínimo 2 tabelas, WHERE, GROUP BY e HAVING
#Exiba todos os produtos vendidos entre os dias 10 e 30 de janeiro de 2024
#Exiba somente aqueles produtos cujo valor de venda_total(Quantidade de produtos vendidos * valor do protudo) seja maior ou igual a 100

#Desabilitando o modo ONLY_FULL_GROUP_BY para não ter que incluir todos os atributos do SELECT no GROUP BY
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT Produto.NOME, NotaFiscal.DATA_EMISSAO, SUM(NotaFiscalSaida_has_Produto.QUANTIDADE * Produto.VALOR) AS VALOR_TOTAL
FROM Produto
JOIN NotaFiscalSaida_has_Produto ON NotaFiscalSaida_has_Produto.Produto_idProduto = Produto.idProduto
JOIN NotaFiscal ON NotaFiscal.IDNOTAFISCAL = NotaFiscalSaida_has_Produto.NotaFiscalSaida_NotaFiscal_IDNOTAFISCAL
WHERE NotaFiscal.DATA_EMISSAO BETWEEN '2023-01-10' AND '2023-01-30'
GROUP BY Produto.idProduto
HAVING VALOR_TOTAL >= 100;
