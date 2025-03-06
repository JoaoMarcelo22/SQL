/*
1.
Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela DimProductSubcategory para a tabela DimProduct.
*/
select
	ProductKey as 'ID Produto',
	ProductName as 'Nome do Produto',
	ProductSubcategoryName as 'Subcategoria'
from
	DimProduct
inner join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

/*
2.
Identifique uma coluna em comum entre as tabelas DimProductSubcategory e DimProductCategory. Utilize essa coluna para complementar informações na tabela DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.
*/

select * from DimProductSubcategory
select * from DimProductCategory

select
    ProductSubcategoryKey as 'ID',
	ProductSubcategoryName as 'Subcategoria',
	DimProductCategory.ProductCategoryName as 'categoria'
from 
	DimProductSubcategory
left join DimProductCategory
	on DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

/*
3.
Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados (de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas: StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT JOIN neste exercício.
*/
select
	StoreKey, 
	StoreName, 
	EmployeeCount, 
	ContinentName, 
	RegionCountryName
from DimStore
left join DimGeography
	on DimStore.GeographyKey = DimGeography.GeographyKey

/*
4.
Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.
*/
select
	ProductName,
	ProductDescription,
	DimProductCategory.ProductCategoryName,
	ProductSubcategoryName,
	BrandName
from DimProduct
left join DimProductSubcategory
	on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		left join DimProductCategory
			on	DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

/*

*/