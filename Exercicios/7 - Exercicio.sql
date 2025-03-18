-- [Exercicio 7]
/*
1. Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7
a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame essa variável de soma.
b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. Chame essa variável de subtracao.
c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o valor4. Chame essa variável de multiplicacao.
d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame essa variável de divisao. Obs: O resultado deverá estar em decimal,
*/
declare @valor1 int
set @valor1 = 10 

declare @valor2 int = 5,
		@valor3 float = 34,
		@valor4 float = 7

declare @soma float = 0
declare @subtracao float 
declare @multiplicacao float 
declare @divisao float 

select 
	@soma = @valor1 + @valor2
select 
	@subtracao = @valor3 - @valor4
select 
	@multiplicacao = @valor1 * @valor4
select 
	@divisao = @valor3 / @valor4

print @soma
print @subtracao
print @multiplicacao
print round(@divisao,2)

/*
2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser especificado.
a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.
b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.
c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.
d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre ‘quantidade’ e ‘preco’.
e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.
*/

declare @produto varchar(50) = 'Celular',
		@Quantidade int = 12,
		@preco float = 9.99,
		@faturamento float

set @faturamento = @Quantidade * @preco

select 
	@produto as 'Produto',
	@Quantidade as 'Quantidade',
	@preco as 'Preço',
	@faturamento as 'Faturamento'

/*
3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:

Dica: você precisará utilizar as funções CAST e FORMAT para chegar no resultado.
*/
declare @nome varchar(100) = 'André',
		@data_nascimento datetime = '10/02/1998',
		@num_pets int = 2


-- FORMAT() retorna uma string

select
	'Meu nome é ' + @nome + ',nasci em ' + cast(FORMAT(@data_nascimento, 'dd/MM/yyyy') as varchar(50))+ ' e tenho ' + CAST(@num_pets as varchar(50)) + ' Pets.'

/*
4. Você acabou de ser promovido e o seu papel será realizar um controle de qualidade sobre as lojas da empresa.
A primeira informação que é passada a você é que o ano de 2008 foi bem complicado para a empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio é descobrir o nome dessas lojas que fecharam no ano de 2008, para que você possa entender o motivo e mapear planos de ação para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado deverá estar estruturado em uma frase, com a seguinte estrutura:
‘As lojas fechadas no ano de 2008 foram: ’ + nome_das_lojas
Obs: utilize o comando PRINT (e não o SELECT!) para mostrar o resultado.
*/
declare @stores varchar(255)

set @stores = ''


select
	@stores = @stores + StoreName + ', '
from
	DimStore
where Status = 'Off' and FORMAT(CloseDate,'yyyy') = 2008


print 'As lojas fechadas no ano de 2008 foram:' + @stores

/*
5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado.
*/
declare @IdSubCategoria int,
		@nomeSubcategory varchar(50)

set @nomeSubcategory = 'Lamps'
set @IdSubCategoria = (
select
	ProductSubcategoryKey
from
	DimProductSubcategory
where
	ProductSubcategoryName = @nomeSubcategory
)

select
	*
from
	DimProduct
where ProductSubcategoryKey = @IdSubCategoria