-- Exercicio 6

/*
1.
a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, em ordem decrescente.
b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e quantidade total devolvida (Return Quantity) de acordo com o nome das lojas (StoreName).
c) Faça um resumo do valor total vendido (Sales Amount) para cada mês (CalendarMonthLabel) e ano (CalendarYear).
*/
--select top(10)
--	ChannelName,
--	sum(SalesQuantity) as 'Quantidade'
--from
--	FactSales
--inner join DimChannel
--	on FactSales.channelKey = DimChannel.ChannelKey
--group by ChannelName
--order by Quantidade desc -- aqui usamos o order by de acordo com o From inicial, nesse caso FactSales.

--select top(10)
--	StoreName,
--	sum(SalesQuantity) as 'Quantidade Vendido',
--	sum(ReturnQuantity) as 'Devolvido'
--from
--	FactSales
--inner join DimStore
--	on FactSales.StoreKey = DimStore.StoreKey
--group by StoreName
--order by StoreName

select
	CalendarYear as 'Ano',
	CalendarMonthLabel as 'Mes',
	sum(SalesAmount) as 'Faturamento total'
from
	FactSales
inner join DimDate
	on FactSales.DateKey = DimDate.Datekey
group by CalendarYear,CalendarMonthLabel,CalendarMonth
order by CalendarMonth asc

/*
2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesQuantity) por produto.
a) Descubra qual é a cor de produto que mais é vendida (de acordo com SalesQuantity).
b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.
*/
select top(10)
	ColorName as 'Cor',
	sum(SalesQuantity) as 'qtd. Vendido'
from
	FactSales
inner join DimProduct
	on FactSales.ProductKey = DimProduct.ProductKey
group by ColorName
having sum(SalesQuantity) >= 3000000 -- Aqui o AS não funcionou
order by [qtd. Vendido] desc



/*
3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto (ProductCategoryName). Obs: Você precisará fazer mais de 1 INNER JOIN, dado que a relação entre FactSales e DimProductCategory não é direta.
*/
select
	ProductCategoryName as 'Categoria produto',
	Sum(SalesQuantity) as 'Qtd Total'
from
	factSales
inner join DimProduct
	on	factSales.ProductKey = DimProduct.ProductKey
		inner join DimProductSubcategory
			on	DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
				inner join DimProductCategory
					on DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
group by ProductCategoryName
order by [Qtd Total] desc


/*
4. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o nome completo do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, faça um agrupamento de produtos e descubra quais foram os top 10 produtos mais comprados pelo cliente da letra a, considerando o nome do produto.
*/

/*
5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o sexo dos clientes.
*/

/*
6. Faça uma tabela resumo mostrando a taxa de câmbio média de acordo com cada CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100.
*/

/*
7. Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos cenários: Actual e Budget.
Dica: A tabela DimScenario será importante para esse exercício.
*/

/*
8. Faça uma tabela resumo mostrando o resultado do planejamento estratégico por ano.
*/

/*
9. Faça um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em consideração em sua análise apenas a marca Contoso e a cor Silver.
*/

/*
10. Faça um agrupamento duplo de quantidade de produtos por BrandName e ProductSubcategoryName. A tabela final deverá ser ordenada de acordo com a coluna BrandName.
*/