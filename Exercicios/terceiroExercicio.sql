-- Exercicio 3

/*
1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa
análise considerando a tabela FactSales.
*/
Select
	sum(SalesQuantity) as 'Quantidade Vendida',
	sum(ReturnQuantity) as 'Quantidade Devolvida'
from
	FactSales
where channelKey = 1
	
/*
2. Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes
da empresa, mas apenas de ocupação Professional. Utilize um comando SQL para atingir esse
resultado
*/

Select
	AVG(YearlyIncome) as 'Media salarial'
from
	DimCustomer
where
	Occupation = 'Professional'

/*
3. Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
empresa. O seu gerente te pediu os seguintes números e informações:
a) Quantos funcionários tem a loja com mais funcionários?
b) Qual é o nome dessa loja?
c) Quantos funcionários tem a loja com menos funcionários?
d) Qual é o nome dessa loja?
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
4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade
total de funcionários do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informações utilizando o SQL.
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.
*/
-- 206 - M
-- 87 F

select
	--COUNT(*)
	top(1)
	FirstName as 'Nome',
	EmailAddress as 'E-mail',
	HireDate as 'Data de Contratação'
from
	DimEmployee
where
	Gender = 'F'
order by 
	HireDate

/*
5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes
informações:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, você pode fazer isso em uma mesma consulta.
*/

select 
	COUNT( distinct ColorName) as 'Quantidade de cores',
	COUNT( distinct BrandName) as 'Quantidade de marcas',
	COUNT( distinct ClassName) as 'Quantidade de classes'
from
	DimProduct