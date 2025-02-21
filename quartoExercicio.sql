-- Exercicio 4
/*
1. 
	a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
	b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
	c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.
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
2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesAmount) por produto (ProductKey).
a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso, mostrar apenas os produtos que tiveram um resultado final de vendas maior do que $5.000.000.
b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas. Desconsidere o filtro de $5.000.000 aplicado.
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
--	sum(SalesAmount) > 5000000
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
a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
*/

select
	top(1) SalesQuantity,
	CustomerKey as 'ID'
from
	FactOnlineSales
order by SalesQuantity desc