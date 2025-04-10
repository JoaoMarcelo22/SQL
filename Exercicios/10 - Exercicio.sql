/*
1. a) A partir da tabela DimProduct, crie uma View contendo as informa��es de ProductName, ColorName, UnitPrice e UnitCost, da tabela DimProduct. Chame essa View de vwProdutos.

b) A partir da tabela DimEmployee, crie uma View mostrando FirstName, BirthDate, DepartmentName. Chame essa View de vwFuncionarios.

c) A partir da tabela DimStore, crie uma View mostrando StoreKey, StoreName e OpenDate. Chame essa View de vwLojas.
*/
go
create view vwProdutos as
select
	ProductName as 'Nome do produto',
	ColorName as 'Cor',
	UnitPrice as 'Pre�o unitario',
	UnitCost
from
	DimProduct
go
go
create view vwFuncionarios as
select
	FirstName as 'Nome',
	BirthDate as 'Data de Nascimento',
	DepartmentName as 'Departamento'
from
	DimEmployee
go
go
create view vwLojas as
select
	StoreName as 'Nome',
	OpenDate as 'Data de Abertura',
	StoreKey as 'ID'
from
	DimStore
go

/*
2. Crie uma View contendo as informa��es de Nome Completo (FirstName + LastName), G�nero (por extenso), E-mail e Renda Anual (formatada com R$). Utilize a tabela DimCustomer. Chame essa View de vwClientes.
*/
go
create view vwClientes as
select
	FirstName + ' ' + LastName as 'Nome',
	iif( Gender = 'F', 
		'Feminino',
		'Masculino'
	) as 'Sexo',
	EmailAddress as  'E-mail',
	'R$: '+ cast(YearlyIncome as varchar) as 'Renda Anual'

from
	DimCustomer
go
select *
from
	vwClientes

/*
3. a) A partir da tabela DimStore, crie uma View que considera apenas as lojas ativas. Fa�a um SELECT de todas as colunas. Chame essa View de vwLojasAtivas.
b) A partir da tabela DimEmployee, crie uma View de uma tabela que considera apenas os funcion�rios da �rea de Marketing. Fa�a um SELECT das colunas: FirstName, EmailAddress e DepartmentName. Chame essa de vwFuncionariosMkt.
c) Crie uma View de uma tabela que considera apenas os produtos das marcas Contoso e Litware. Al�m disso, a sua View deve considerar apenas os produtos de cor Silver. Fa�a um SELECT de todas as colunas
*/
go
create view vwLojasAtivas as
select 
	*
from
 DimStore
where CloseDate is null
go
go
create view vwFuncionariosMkt as
select 
	FirstName as 'Nome',
	EmailAddress as 'E-mail',
	DepartmentName as 'Departamento'
from
 DimEmployee
where DepartmentName = 'Marketing'
go
go
create view vwContosoLitwareSilver as
select 
	*
from
 DimProduct
where ColorName = 'Silver' and BrandName in ('Contoso','Litware')
go

/*
4. Crie uma View que seja o resultado de um agrupamento da tabela FactSales. Este agrupamento deve considerar o SalesQuantity (Quantidade Total Vendida) por Nome do Produto. Chame esta View de vwTotalVendidoProdutos.
OBS: Para isso, voc� ter� que utilizar um JOIN para relacionar as tabelas FactSales e DimProduct.
*/
go
create view vwTotalVendidoProdutos as
select
	SalesQuantity as 'Qtd. Total Vendido',
	ProductName as 'Nome do produto'
from
	FactSales
inner join DimProduct
	on FactSales.ProductKey = DimProduct.ProductKey
go
/*
5. Fa�a as seguintes altera��es nas tabelas da quest�o 1.
a. Na View criada na letra a da quest�o 1, adicione a coluna de BrandName.
b. Na View criada na letra b da quest�o 1, fa�a um filtro e considere apenas os funcion�rios do sexo feminino.
c. Na View criada na letra c da quest�o 1, fa�a uma altera��o e filtre apenas as lojas ativas.
*/

go
alter view vwProdutos as
select
	BrandName as 'Loja',
	ProductName as 'Nome do produto',
	ColorName as 'Cor',
	UnitPrice as 'Pre�o unitario',
	UnitCost
	
from
	DimProduct
go
go
alter view vwFuncionarios as
select
	FirstName as 'Nome',
	BirthDate as 'Data de Nascimento',
	DepartmentName as 'Departamento',
	Gender as 'Sexo'
from
	DimEmployee
where Gender = 'F'
go
go
alter view vwLojas as
select
	StoreName as 'Nome',
	OpenDate as 'Data de Abertura',
	StoreKey as 'ID'
from
	DimStore
where CloseDate is null
go

/*
6. a) Crie uma View que seja o resultado de um agrupamento da tabela DimProduct. O resultado esperado da consulta dever� ser o total de produtos por marca. Chame essa View de vw_6a.
b) Altere a View criada no exerc�cio anterior, adicionando o peso total por marca. Aten��o: sua View final dever� ter ent�o 3 colunas: Nome da Marca, Total de Produtos e Peso Total.
c) Exclua a View vw_6a.
*/
go
create view vw_6a as
select
	COUNT(ProductName) as 'Qtd. Produtos',
	BrandName as 'Empresa'
from
	DimProduct
group by BrandName
go

go
alter view vw_6a as
select
	COUNT(ProductName) as 'Qtd. Produtos',
	BrandName as 'Empresa',
	sum(Weight) as 'Peso'
from
	DimProduct
group by BrandName
go

drop view vw_6a