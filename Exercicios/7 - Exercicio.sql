-- [Exercicio 7]
/*
1. Declare 4 vari�veis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7
a) Crie uma nova vari�vel para armazenar o resultado da soma entre valor1 e valor2. Chame essa vari�vel de soma.
b) Crie uma nova vari�vel para armazenar o resultado da subtra��o entre valor3 e valor 4. Chame essa vari�vel de subtracao.
c) Crie uma nova vari�vel para armazenar o resultado da multiplica��o entre o valor 1 e o valor4. Chame essa vari�vel de multiplicacao.
d) Crie uma nova vari�vel para armazenar o resultado da divis�o do valor3 pelo valor4. Chame essa vari�vel de divisao. Obs: O resultado dever� estar em decimal,
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
2. Para cada declara��o das vari�veis abaixo, aten��o em rela��o ao tipo de dado que dever� ser especificado.
a) Declare uma vari�vel chamada �produto� e atribua o valor de �Celular�.
b) Declare uma vari�vel chamada �quantidade� e atribua o valor de 12.
c) Declare uma vari�vel chamada �preco� e atribua o valor 9.99.
d) Declare uma vari�vel chamada �faturamento� e atribua o resultado da multiplica��o entre �quantidade� e �preco�.
e) Visualize o resultado dessas 4 vari�veis em uma �nica consulta, por meio do SELECT.
*/

declare @produto varchar(50) = 'Celular',
		@Quantidade int = 12,
		@preco float = 9.99,
		@faturamento float

set @faturamento = @Quantidade * @preco

select 
	@produto as 'Produto',
	@Quantidade as 'Quantidade',
	@preco as 'Pre�o',
	@faturamento as 'Faturamento'

/*
3. Voc� � respons�vel por gerenciar um banco de dados onde s�o recebidos dados externos de usu�rios. Em resumo, esses dados s�o:
- Nome do usu�rio
- Data de nascimento
- Quantidade de pets que aquele usu�rio possui
Voc� precisar� criar um c�digo em SQL capaz de juntar as informa��es fornecidas por este usu�rio. Para simular estes dados, crie 3 vari�veis, chamadas: nome, data_nascimento e num_pets. Voc� dever� armazenar os valores �Andr�, �10/02/1998� e 2, respectivamente.
O resultado final a ser alcan�ado � mostrado no print abaixo:

Dica: voc� precisar� utilizar as fun��es CAST e FORMAT para chegar no resultado.
*/
declare @nome varchar(100) = 'Andr�',
		@data_nascimento datetime = '10/02/1998',
		@num_pets int = 2


-- FORMAT() retorna uma string

select
	'Meu nome � ' + @nome + ',nasci em ' + cast(FORMAT(@data_nascimento, 'dd/MM/yyyy') as varchar(50))+ ' e tenho ' + CAST(@num_pets as varchar(50)) + ' Pets.'

/*
4. Voc� acabou de ser promovido e o seu papel ser� realizar um controle de qualidade sobre as lojas da empresa.
A primeira informa��o que � passada a voc� � que o ano de 2008 foi bem complicado para a empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio � descobrir o nome dessas lojas que fecharam no ano de 2008, para que voc� possa entender o motivo e mapear planos de a��o para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado dever� estar estruturado em uma frase, com a seguinte estrutura:
�As lojas fechadas no ano de 2008 foram: � + nome_das_lojas
Obs: utilize o comando PRINT (e n�o o SELECT!) para mostrar o resultado.
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
5. Voc� precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria espec�fica: �Lamps�.
Utilize o conceito de vari�veis para chegar neste resultado.
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