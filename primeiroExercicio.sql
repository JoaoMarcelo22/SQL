/*Exercicio 1 
Você é responsável por controlar os dados de clientes e de produtos da sua empresa.*/

/*A) Existem 2.517 produtos cadastrados na base e, se não tiver, você deverá reportar ao seu
gestor para saber se existe alguma defasagem no controle dos produtos.
  R) Contem todas os produtos. */
select 
	*
from
	DimProduct
/*B) Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle.
Verifique se esse número aumentou ou reduziu.
  R) Não há 19.500 mas sim 18.869 clientes. */
select 
	*
from
	DimCustomer

/*Exercicio 2  
Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer
descontos especiais para os clientes no dia de seus aniversários. Para isso, você vai precisar
listar todos os clientes e as suas respectivas datas de nascimento, além de um contato.*/

/*A) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela
dimCustomer.
  R) Feito.
*/
select 
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
from
	DimCustomer
/*B) Renomeie as colunas dessa tabela usando o alias (comando AS).
  R)*/
select 
	CustomerKey as 'id',
	FirstName as 'Primeiro Nome',
	EmailAddress as 'Email',
	BirthDate as 'Data de Nascimento'
from
	DimCustomer


/* Exercicio 3 
A Contoso está comemorando aniversário de inauguração de 10 anos e pretende fazer uma
ação de premiação para os clientes. A empresa quer presentear os primeiros clientes desde
a inauguração.
Você foi alocado para levar adiante essa ação. Para isso, você terá que fazer o seguinte:
*/
/*a) A Contoso decidiu presentear os primeiros 100 clientes da história com um vale compras
de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros
100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).
*/

select
	top(100) *
from 
	DimCustomer

/*
b) A Contoso decidiu presentear os primeiros 20% de clientes da história com um vale
compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua
tabela dimCustomer (selecione todas as colunas).
*/
select
    top(20) percent *
from 
	DimCustomer
/*
c) Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as
colunas FirstName, EmailAddress, BirthDate.
*/
select
	top(100) FirstName,
	EmailAddress,
	BirthDate
from 
	DimCustomer
/*
d) Renomeie as colunas anteriores para nomes em português.
*/
select
	top(100) FirstName as 'nome',
	EmailAddress as 'e-mail',
	BirthDate as 'Data de Nascimento'
from 
	DimCustomer

/*Exercicio 4
A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o
estoque. Você é da área de compras e precisa descobrir quem são esses fornecedores.
Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela
dimProduct e renomeie essa nova coluna da tabela.
*/
select
   	distinct	Manufacturer as 'Fornecedor'
from 
	DimProduct

/*Exercicio 5
O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto
registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa
informação. 
*/
-- Saber quantos produtos tem na base
select
   	*
from 
	DimProduct

-- Saber quantos produtos foram vendidos
select
   	distinct ProductKey
from 
	FactSales

