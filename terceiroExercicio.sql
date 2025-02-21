-- Exercicio 3

/*
1. O gerente comercial pediu a voc� uma an�lise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma fun��o SQL para fazer essas consultas no seu banco de dados. Obs: Fa�a essa
an�lise considerando a tabela FactSales.
*/
Select
	sum(SalesQuantity) as 'Quantidade Vendida',
	sum(ReturnQuantity) as 'Quantidade Devolvida'
from
	FactSales
where channelKey = 1
	
/*
2. Uma nova a��o no setor de Marketing precisar� avaliar a m�dia salarial de todos os clientes
da empresa, mas apenas de ocupa��o Professional. Utilize um comando SQL para atingir esse
resultado
*/

Select
	AVG(YearlyIncome) as 'Media salarial'
from
	DimCustomer
where
	Occupation = 'Professional'

/*
3. Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na
empresa. O seu gerente te pediu os seguintes n�meros e informa��es:
a) Quantos funcion�rios tem a loja com mais funcion�rios?
b) Qual � o nome dessa loja?
c) Quantos funcion�rios tem a loja com menos funcion�rios?
d) Qual � o nome dessa loja?
*/
Select
	MAX(EmployeeCount) as 'Maximo de cliente'
from
	DimStore

Select
	top(1) StoreName as 'Nome da loja', -- Nome da loja com maiores funcionarios 
	EmployeeCount as 'Funcionarios'
from
	DimStore
order by EmployeeCount desc

Select
	MIN(EmployeeCount) as 'Maximo de cliente'
from
	DimStore

Select
	top(1)
	StoreName as 'Nome da loja', -- Nome da loja com menos funcionarios 
	EmployeeCount as 'Funcionarios'
from
	DimStore
where
	EmployeeCount is not null
order by EmployeeCount

/*
4. A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade
total de funcion�rios do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informa��es utilizando o SQL.
b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as
seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o.
*/
-- 206 - M
-- 87 F

select
	--COUNT(*)
	top(1)
	FirstName as 'Nome',
	EmailAddress as 'E-mail',
	HireDate as 'Data de Contrata��o'
from
	DimEmployee
where
	Gender = 'F'
order by 
	HireDate

/*
5. Agora voc� precisa fazer uma an�lise dos produtos. Ser� necess�rio descobrir as seguintes
informa��es:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, voc� pode fazer isso em uma mesma consulta.
*/

select 
	COUNT( distinct ColorName) as 'Quantidade de cores',
	COUNT( distinct BrandName) as 'Quantidade de marcas',
	COUNT( distinct ClassName) as 'Quantidade de classes'
from
	DimProduct