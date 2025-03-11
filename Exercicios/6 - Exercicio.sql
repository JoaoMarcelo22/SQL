-- Exercicio 6

/*
1.
a) Fa�a um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal de vendas (ChannelName). Voc� deve ordenar a tabela final de acordo com SalesQuantity, em ordem decrescente.
b) Fa�a um agrupamento mostrando a quantidade total vendida (Sales Quantity) e quantidade total devolvida (Return Quantity) de acordo com o nome das lojas (StoreName).
c) Fa�a um resumo do valor total vendido (Sales Amount) para cada m�s (CalendarMonthLabel) e ano (CalendarYear).
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
2. Voc� precisa fazer uma an�lise de vendas por produtos. O objetivo final � descobrir o valor total vendido (SalesQuantity) por produto.
a) Descubra qual � a cor de produto que mais � vendida (de acordo com SalesQuantity).
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
having sum(SalesQuantity) >= 3000000 -- Aqui o AS n�o funcionou
order by [qtd. Vendido] desc



/*
3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto (ProductCategoryName). Obs: Voc� precisar� fazer mais de 1 INNER JOIN, dado que a rela��o entre FactSales e DimProductCategory n�o � direta.
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
4. a) Voc� deve fazer uma consulta � tabela FactOnlineSales e descobrir qual � o nome completo do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, fa�a um agrupamento de produtos e descubra quais foram os top 10 produtos mais comprados pelo cliente da letra a, considerando o nome do produto.
*/

/*
5. Fa�a um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o sexo dos clientes.
*/

/*
6. Fa�a uma tabela resumo mostrando a taxa de c�mbio m�dia de acordo com cada CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100.
*/

/*
7. Calcule a SOMA TOTAL de AMOUNT referente � tabela FactStrategyPlan destinado aos cen�rios: Actual e Budget.
Dica: A tabela DimScenario ser� importante para esse exerc�cio.
*/

/*
8. Fa�a uma tabela resumo mostrando o resultado do planejamento estrat�gico por ano.
*/

/*
9. Fa�a um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em considera��o em sua an�lise apenas a marca Contoso e a cor Silver.
*/

/*
10. Fa�a um agrupamento duplo de quantidade de produtos por BrandName e ProductSubcategoryName. A tabela final dever� ser ordenada de acordo com a coluna BrandName.
*/