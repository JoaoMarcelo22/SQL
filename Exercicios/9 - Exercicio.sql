/*
1. O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O percentual aplicado dever� ser de:
Economy -> 5%
Regular -> 7%
Deluxe -> 9%
a) Fa�a uma consulta � tabela DimProduct que retorne as seguintes colunas: ProductKey, ProductName, e outras duas colunas que dever�o retornar o % de Desconto e UnitPrice com desconto.
b) Fa�a uma adapta��o no c�digo para que os % de desconto de 5%, 7% e 9% sejam facilmente modificados (dica: utilize vari�veis).
*/
declare @economyPorcent varchar(10) = '5%'
declare @regularPorcent varchar(10) = '7%'
declare @deluxPorcent varchar(10) = '9%'

select
	ProductKey,
	ProductName,
	UnitPrice,
	iif(
		ClassName = 'Economy',
		@economyPorcent,
		iif(
			ClassName = 'Regular',
			@regularPorcent,
			@deluxPorcent
		)
	) as 'Desconto'
from
	DimProduct

/*
2. Voc� ficou respons�vel pelo controle de produtos da empresa e dever� fazer uma an�lise da quantidade de produtos por Marca.
A divis�o das marcas em categorias dever� ser a seguinte:
CATEGORIA A: Mais de 500 produtos
CATEGORIA B: Entre 100 e 500 produtos
CATEGORIA C: Menos de 100 produtos
Fa�a uma consulta � tabela DimProduct e retorne uma tabela com um agrupamento de Total de Produtos por Marca, al�m da coluna de Categoria, conforme a regra acima.
*/
select
	
from
	DimProduct


/*
3. Ser� necess�rio criar uma categoriza��o de cada loja da empresa considerando a quantidade de funcion�rios de cada uma. A l�gica a ser seguida ser� a l�gica abaixo:
EmployeeCount >= 50; 'Acima de 50 funcion�rios'
EmployeeCount >= 40; 'Entre 40 e 50 funcion�rios'
EmployeeCount >= 30; 'Entre 30 e 40 funcion�rios'
EmployeeCount >= 20; 'Entre 20 e 30 funcion�rios'
EmployeeCount >= 40; 'Entre 10 e 20 funcion�rios'
Caso contr�rio: 'Abaixo de 10 funcion�rios'
Fa�a uma consulta � tabela DimStore que retorne as seguintes informa��es: StoreName, EmployeeCount e a coluna de categoria, seguindo a regra acima.
*/

select
	StoreName as 'Nome da Empresa',
	EmployeeCount as 'Quantidade de funcionarios',
	StoreType as 'Categoria',
	case
		when EmployeeCount>= 50 then 'Acima de 50 funcionarios'
		when EmployeeCount>= 40 then 'Entre 40 e 50 funcionarios'
		when EmployeeCount>= 30 then 'Entre 30 e 40 funcionarios'
		when EmployeeCount>= 20 then 'Entre 20 e 30 funcionarios'
		when EmployeeCount>= 10 then 'Entre 10 e 20 funcionarios'
		else 'Abaixo de 10 Funcionarios'
	end as 'Tamanho da Loja'
from	
	DimStore