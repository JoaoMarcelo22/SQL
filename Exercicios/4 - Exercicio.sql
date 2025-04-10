-- Exercicio 4
/*
1. 
	a) Fa�a um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
	b) Fa�a um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
	c) Fa�a um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.
*/

-- A
--select   
--	channelKey as 'Canal de vendas',
--	sum(SalesQuantity) as 'Quantidade vendido' 
--from
--	FactSales
--group by 
--	channelKey

-- B
--select 
--	StoreKey as 'ID',
--	sum(SalesQuantity) as 'Quantidade vendido',
--	sum(ReturnQuantity) as 'Quantidade devolvida'
--from
--	FactSales
--group by 
--	StoreKey

-- C
select 
	channelKey as 'Canal de vendas',
	sum(SalesAmount) as 'Total vendido'
from
	FactSales
where DateKey like '%2007%'
group by 
	channelKey

/*
2. Voc� precisa fazer uma an�lise de vendas por produtos. O objetivo final � descobrir o valor total vendido (SalesAmount) por produto (ProductKey).
a) A tabela final dever� estar ordenada de acordo com a quantidade vendida e, al�m disso, mostrar apenas os produtos que tiveram um resultado final de vendas maior do que $5.000.000.
b) Fa�a uma adapta��o no exerc�cio anterior e mostre os Top 10 produtos com mais vendas. Desconsidere o filtro de $5.000.000 aplicado.
*/

--A
--select 
--	ProductKey as 'ID',
--	sum(SalesAmount) as 'Total vendido'
--from
--	FactSales
--group by
--	ProductKey
--having
--	sum(SalesAmount) >= 5000000
--order by 
--	[Total vendido]

select 
    top(10) SalesAmount as 'Total vendido',
	ProductKey as 'ID'
from
	FactSales
order by 
	SalesAmount desc


/*
3. 
a) Voc� deve fazer uma consulta � tabela FactOnlineSales e descobrir qual � o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, fa�a um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
*/

-- ID produto na realidade � o cliente ID:19037

--select
--	CustomerKey as 'ID Produto',
--	Sum(SalesQuantity) as 'Total Vendido'
--from
--	FactOnlineSales
--group by CustomerKey
--order by Sum(SalesQuantity) desc

select top(3)
	ProductKey as 'ID Produto',
	Sum(SalesQuantity) as 'Total Vendido'
from
	FactOnlineSales
where CustomerKey = 19037
group by ProductKey
order by [Total Vendido] desc

/*
4. 
a) Fa�a um agrupamento e descubra a quantidade total de produtos por marca.
b) Determine a m�dia do pre�o unit�rio (UnitPrice) para cada ClassName.
c) Fa�a um agrupamento de cores e descubra o peso total que cada cor de produto possui.
*/

--select  --A
--	BrandName,
--	count(BrandName) as 'Total Produto'
--from
--	DimProduct
--group by BrandName
--order by [Total Produto] desc

--select  --B
--	ClassName,
--	avg(UnitPrice) as 'Media do pre�o por produto'
--from
--	DimProduct
--group by ClassName
--order by [Media do pre�o por produto] desc

--select
--	ColorName,
--	sum(Weight) as 'Peso total'
--from 
--	DimProduct
--group by ColorName
--order by [Peso total] desc

/*
5. Voc� dever� descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca �Contoso� e ter os seus valores classificados em ordem decrescente.
*/

--select
--	StockTypeName,
--	sum(Weight) as 'Peso total'
--from 
--	DimProduct
--where
--	BrandName = 'Contoso'
--group by StockTypeName
--order by [Peso total] desc

/*
6. Voc� seria capaz de confirmar se todas as marcas dos produtos possuem � disposi��o todas as 16 op��es de cores?
*/
select
	BrandName,
	count( distinct ColorName) as 'Cores totais'
from
	DimProduct
group by BrandName
order by [Cores totais] desc

/*
7. Fa�a um agrupamento para saber o total de clientes de acordo com o Sexo e tamb�m a m�dia salarial de acordo com o Sexo. Corrija qualquer resultado �inesperado� com os seus conhecimentos em SQL.
*/

select 
	Gender,
	count(Gender) as 'Total de clientes',
	avg(YearlyIncome) as 'Media salarial'
from
	DimCustomer
where Gender is not null
group by Gender
order by [Media salarial]

/*
8. Fa�a um agrupamento para descobrir a quantidade total de clientes e a m�dia salarial de acordo com o seu n�vel escolar. Utilize a coluna Education da tabela DimCustomer para fazer esse agrupamento.
*/
select 
	Education,
	count(CustomerKey) as 'Total de clientes',
	avg(YearlyIncome) as 'Media salarial'
from
	DimCustomer
where Education is not null
group by Education
order by [Media salarial]

/*
9. Fa�a uma tabela resumo mostrando a quantidade total de funcion�rios de acordo com o Departamento (DepartmentName). Importante: Voc� dever� considerar apenas os funcion�rios ativos.
*/

select
	DepartmentName,
	count(EmployeeKey) as 'Total de funcionario'
from
	DimEmployee
where Status is not null
group by DepartmentName
order by [Total de funcionario]

/*
10. Fa�a uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Voc� deve considerar apenas as mulheres, dos departamentos de Production, Marketing, Engineering e Finance, para os funcion�rios contratados entre os anos de 1999 e 2000.
*/
select
	Title,
	sum(VacationHours) as 'Total de funcionario'
from
	DimEmployee
where Gender = 'F' and DepartmentName in ('Production','Marketing','Engineering','Finance') and HireDate between '1999-01-01' and '2000-12-31' 
group by Title
order by [Total de funcionario]