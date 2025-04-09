/*
1. O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O percentual aplicado deverá ser de:
Economy -> 5%
Regular -> 7%
Deluxe -> 9%
a) Faça uma consulta à tabela DimProduct que retorne as seguintes colunas: ProductKey, ProductName, e outras duas colunas que deverão retornar o % de Desconto e UnitPrice com desconto.
b) Faça uma adaptação no código para que os % de desconto de 5%, 7% e 9% sejam facilmente modificados (dica: utilize variáveis).
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
2. Você ficou responsável pelo controle de produtos da empresa e deverá fazer uma análise da quantidade de produtos por Marca.
A divisão das marcas em categorias deverá ser a seguinte:
CATEGORIA A: Mais de 500 produtos
CATEGORIA B: Entre 100 e 500 produtos
CATEGORIA C: Menos de 100 produtos
Faça uma consulta à tabela DimProduct e retorne uma tabela com um agrupamento de Total de Produtos por Marca, além da coluna de Categoria, conforme a regra acima.
*/
select
	
from
	DimProduct


/*
3. Será necessário criar uma categorização de cada loja da empresa considerando a quantidade de funcionários de cada uma. A lógica a ser seguida será a lógica abaixo:
EmployeeCount >= 50; 'Acima de 50 funcionários'
EmployeeCount >= 40; 'Entre 40 e 50 funcionários'
EmployeeCount >= 30; 'Entre 30 e 40 funcionários'
EmployeeCount >= 20; 'Entre 20 e 30 funcionários'
EmployeeCount >= 40; 'Entre 10 e 20 funcionários'
Caso contrário: 'Abaixo de 10 funcionários'
Faça uma consulta à tabela DimStore que retorne as seguintes informações: StoreName, EmployeeCount e a coluna de categoria, seguindo a regra acima.
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