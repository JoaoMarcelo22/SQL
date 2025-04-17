# 📌 Repositório de Aprendizado em SQL

Bem-vindo ao **Repositório de Aprendizado em SQL**! 

✅ **Exercícios práticos**.
✅ **PDFs explicativos**.
✅ **Tabelas e comandos SQL**.

---

## 📂 Estrutura do Repositório

A organização do repositório segue a seguinte estrutura:

```
/
├── 📜 README.md  # Documento principal com explicações
├── 📂 Exercicios  # Scripts SQL para prática
│   ├── 1- Exercicio.sql
│   ├── 2- Exercicio.sql
│   ├── 3- Exercicio.sql
│   └── 4- Exercicio.sql
├── 📂 Materiais  # PDFs com teoria,dicas,Casos práticos e consultas comentadas
    ├── 10 - [SQL Server] Views no SQL Server - Explicação Exercícios - Módulo 13 - Lista de Exercícios.pdf
    ├── 9 - [SQL Server] Funções Condicionais no SQL Server - Explicação Exercícios - Módulo 12 - Lista de Exercícios.pdf
    ├── 8 - [SQL Server] Strings e Datas no SQL Server - Explicação Exercícios - Módulo 11 - Lista de Exercícios.pdf
    └── 7 - SQL Server - Lista de Exercícios - Variáveis.pdf
```

---

## 🚀 Como Usar Este Repositório

1. Clone este repositório para seu computador:
   ```bash
   git clone https://github.com/seu-usuario/sql-learning.git
   ```
2. Acesse os arquivos SQL e pratique rodando os scripts no seu **SGBD favorito** (MySQL, PostgreSQL, SQL Server, etc.).
3. Consulte os PDFs na pasta **Materiais** para aprender conceitos importantes.
4. Explore os **exemplos práticos** para entender aplicações reais de SQL.

---

## 📖 Comandos SQL Essenciais

Aqui está uma tabela com os principais comandos SQL e suas respectivas descrições:

## Seleção de Dados
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `SELECT` | Recupera dados de uma tabela | `SELECT * FROM clientes;` |
| `TOP` | Traz os N primeiros casos | `SELECT TOP(10) * FROM clientes;` |
| `TOP + PERCENT` | Traz os N primeiros casos em relação à porcentagem | `SELECT TOP(10) PERCENT * FROM clientes;` |
| `DISTINCT` | Seleciona os valores distintos | `SELECT DISTINCT clientesName FROM clientes;` |
| `AS` | Aliasing, responsável por nomear ou renomear uma coluna | `SELECT clientesName AS 'Nome do Cliente' FROM clientes;` |

## Filtros e Condições
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `WHERE` | Filtra os resultados de uma consulta | `SELECT * FROM pedidos WHERE valor > 100;` |
| `BETWEEN` | Filtra resultados dentro de um range | `SELECT * FROM usuarios WHERE idade BETWEEN 10 AND 50;` |
| `LIKE` | Filtra resultados que correspondem a um padrão | `SELECT * FROM usuarios WHERE nome LIKE 'J%';` |
| `IS NULL/ IS NOT NULL` | Filtra resultados que são nulos ou não nulos | `SELECT * FROM usuarios WHERE nome IS NOT NULL;` |

## Ordenação e Agrupamento
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `ORDER BY` | Ordena os resultados da consulta | `SELECT * FROM produtos ORDER BY preco DESC;` |
| `GROUP BY` | Agrupa resultados por um ou mais campos | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria;` |
| `HAVING` | Filtra os resultados de uma agregação | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria HAVING COUNT(*) > 10;` |

## Funções de Agregação
| Função | Descrição | Exemplo |
|--------|-----------|---------|
| `SUM` | Soma os valores de uma coluna numérica | `SELECT SUM(preco) FROM produtos;` |
| `COUNT` | Conta o número de linhas | `SELECT COUNT(*) FROM produtos;` |
| `COUNT(DISTINCT ...)` | Conta valores distintos em uma coluna | `SELECT COUNT(DISTINCT categoria) FROM produtos;` |
| `MIN` | Retorna o menor valor de uma coluna | `SELECT MIN(preco) FROM produtos;` |
| `MAX` | Retorna o maior valor de uma coluna | `SELECT MAX(preco) FROM produtos;` |
| `AVG` | Calcula a média dos valores de uma coluna | `SELECT AVG(preco) FROM produtos;` |

## Junção de Tabelas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `JOIN` | Une dados de duas ou mais tabelas | `SELECT pedidos.id, clientes.nome FROM pedidos JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `INNER JOIN` | Retorna apenas correspondências entre tabelas | `SELECT * FROM vendas INNER JOIN clientes ON vendas.cliente_id = clientes.id;` |
| `LEFT JOIN` | Retorna todos os registros da tabela esquerda e correspondências da direita | `SELECT * FROM clientes LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `RIGHT JOIN` | Retorna todos os registros da tabela direita e correspondências da esquerda | `SELECT * FROM pedidos RIGHT JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `FULL JOIN` | Retorna todos os registros quando há correspondência em uma das tabelas | `SELECT * FROM clientes FULL JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `CROSS JOIN` | Retorna todos os registros para todas as colunas (replica os valores) | `SELECT * FROM clientes CROSS JOIN pedidos;` |
| `UNION` | Une duas tabelas | `SELECT * FROM FactOnlineSales UNION SELECT * FROM FactStoreSales ORDER BY DataVenda DESC;` |

## Tipos e Variáveis
| Comando/Função | Descrição | Exemplo |
|----------------|-----------|---------|
| `CAST` | Converte um valor de um tipo para outro | `SELECT CAST(preco AS INT) FROM produtos;` |
| `FORMAT` | Formata um valor com base em uma máscara | `SELECT FORMAT(getdate(), 'dd/MM/yyyy');` |
| `ROUND` | Arredonda um número para um número específico de casas decimais | `SELECT ROUND(preco, 2) FROM produtos;` |
| `FLOOR` | Arredonda um número para baixo | `SELECT FLOOR(preco) FROM produtos;` |
| `CEILING` | Arredonda um número para cima | `SELECT CEILING(preco) FROM produtos;` |
| `DECLARE` | Declara uma variável | `DECLARE @nome VARCHAR(50);` |
| `SET` | Atribui um valor a uma variável | `SET @nome = 'Produto X';` |
| `DECLARE` + `SET` múltiplas | Declara e define várias variáveis | `DECLARE @a INT = 10, @b INT = 20;` |
| `SQL_VARIANT_PROPERTY` | Retorna propriedades de um valor do tipo `sql_variant` | `SELECT SQL_VARIANT_PROPERTY(CAST(123 AS sql_variant), 'BaseType');` |

## Manipulação de Strings
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `LEN` | Retorna o número de caracteres de uma string | `SELECT LEN('Texto');` |
| `DATALENGTH` | Retorna o tamanho em bytes de um valor | `SELECT DATALENGTH('Texto');` |
| `CONCAT` | Concatena duas ou mais strings | `SELECT CONCAT('Olá', ' Mundo');` |
| `LEFT` | Retorna os primeiros N caracteres de uma string | `SELECT LEFT('Texto', 3);` |
| `RIGHT` | Retorna os últimos N caracteres de uma string | `SELECT RIGHT('Texto', 3);` |
| `REPLACE` | Substitui parte de uma string por outra | `SELECT REPLACE('Hello World', 'World', 'SQL');` |
| `TRANSLATE` | Substitui caracteres específicos dentro de uma string | `SELECT TRANSLATE('123-456', '123', 'ABC');` |
| `STUFF` | Insere ou substitui parte de uma string | `SELECT STUFF('SQL Server', 5, 0, '2019 ');` |
| `UPPER` | Converte uma string para maiúsculas | `SELECT UPPER('sql');` |
| `LOWER` | Converte uma string para minúsculas | `SELECT LOWER('SQL');` |
| `CHARINDEX` | Retorna a posição de uma substring dentro de outra | `SELECT CHARINDEX('o', 'Texto');` |
| `SUBSTRING` | Retorna parte de uma string | `SELECT SUBSTRING('Texto', 2, 3);` |
| `TRIM` | Remove espaços em branco do início e fim da string | `SELECT TRIM(' Texto ');` |
| `LTRIM` | Remove espaços à esquerda | `SELECT LTRIM(' Texto');` |
| `RTRIM` | Remove espaços à direita | `SELECT RTRIM('Texto ');` |

## Manipulação de Datas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `DAY` | Retorna o dia do mês de uma data | `SELECT DAY(GETDATE());` |
| `MONTH` | Retorna o mês de uma data | `SELECT MONTH(GETDATE());` |
| `YEAR` | Retorna o ano de uma data | `SELECT YEAR(GETDATE());` |
| `DATEFROMPARTS` | Cria uma data a partir de ano, mês e dia | `SELECT DATEFROMPARTS(2023, 12, 25);` |
| `DATEADD` | Adiciona um intervalo a uma data | `SELECT DATEADD(DAY, 10, GETDATE());` |
| `DATEDIFF` | Retorna a diferença entre duas datas | `SELECT DATEDIFF(DAY, '2023-01-01', '2023-12-31');` |
| `FORMAT`   | Formata um valor para exibição | `SELECT FORMAT(GETDATE(), 'dd/MM/yyyy');`|
| `GETDATE` | Retorna a data e hora atuais | `SELECT GETDATE() AS agora;` |
| `SYSDATETIME` | Retorna a data e hora atuais com maior precisão | `SELECT SYSDATETIME() AS agora_preciso;` |
| `DATEPART` | Retorna uma parte específica da data | `SELECT DATEPART(YEAR, GETDATE()) AS ano;` |
| `DATENAME` | Retorna o nome de uma parte da data | `SELECT DATENAME(MONTH, GETDATE()) AS mes;` |

## Funções Condicionais
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `CASE WHEN THEN ELSE` | Cria uma estrutura condicional | `SELECT clientesName, CASE WHEN idade >= 18 THEN 'Adulto' ELSE 'Menor' END AS faixa_etaria FROM clientes;` |
| `CASE ADITIVO` | Verifica múltiplas condições sem `WHEN` repetido | `SELECT categoria, CASE categoria WHEN 'A' THEN 'Alta' WHEN 'B' THEN 'Média' ELSE 'Baixa' END AS prioridade FROM pedidos;` |
| `CASE ANINHADO` | Um `CASE` dentro de outro `CASE` | `SELECT nome, CASE WHEN salario > 5000 THEN 'Alto' WHEN salario BETWEEN 3000 AND 5000 THEN CASE WHEN tempo_servico > 5 THEN 'Médio-Alto' ELSE 'Médio' END ELSE 'Baixo' END AS classificacao FROM funcionarios;` |
| `IIF` | Alternativa ao `CASE`, retorna um valor baseado em uma condição (SQL Server) | `SELECT IIF(idade >= 18, 'Adulto', 'Menor') AS faixa_etaria FROM clientes;` |
| `IIF COMPOSTO` | `IIF` com múltiplas condições encadeadas | `SELECT IIF(idade >= 60, 'Idoso', IIF(idade >= 18, 'Adulto', 'Menor')) AS faixa_etaria FROM clientes;` |
| `ISNULL` | Substitui valores `NULL` por um padrão | `SELECT nome, ISNULL(email, 'Sem Email') AS email_corrigido FROM clientes;` |

## Comandos com Views e Uso de Banco de Dados
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `CREATE VIEW` | Cria uma view (visão) com base em uma consulta | `CREATE VIEW vw_produtos_caros AS SELECT * FROM produtos WHERE preco > 100;` |
| `USE` | Define o banco de dados atual para execução de comandos | `USE loja_virtual;` |
| `ALTER VIEW` | Altera a definição de uma view existente | `ALTER VIEW vw_produtos_caros AS SELECT nome, preco FROM produtos WHERE preco > 200;` |
| `DROP VIEW` | Remove uma view do banco de dados | `DROP VIEW vw_produtos_caros;` |

## Estruturas e Modificação de Tabelas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `CREATE TABLE` | Cria uma nova tabela no banco de dados | `CREATE TABLE clientes (id INT, nome VARCHAR(100));` |
| `ALTER TABLE` | Modifica a estrutura de uma tabela | `ALTER TABLE clientes ADD COLUMN email VARCHAR(100);` |
| `DROP TABLE` | Remove uma tabela do banco de dados | `DROP TABLE clientes;` |
| `TRUNCATE TABLE` | Apaga todos os registros de uma tabela | `TRUNCATE TABLE pedidos;` |

## Manipulação de Dados
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `INSERT` | Insere novos registros na tabela | `INSERT INTO produtos (nome, preco) VALUES ('Mouse', 50);` |
| `UPDATE` | Atualiza registros existentes | `UPDATE produtos SET preco = 60 WHERE nome = 'Mouse';` |
| `DELETE` | Remove registros de uma tabela | `DELETE FROM produtos WHERE preco < 10;` |
| `CAST`| Converte um tipo de dado para outro | `SELECT CAST(123.45 AS INT);`|

## Manipulação de Banco de Dados e Tabelas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `CREATE DATABASE` | Cria um novo banco de dados | `CREATE DATABASE loja_virtual;` |
| `DROP DATABASE` | Exclui um banco de dados existente | `DROP DATABASE loja_virtual;` |
| `CREATE TABLE` | Cria uma nova tabela | `CREATE TABLE produtos (id INT, nome VARCHAR(100), preco DECIMAL(10,2));` |
| `INSERT INTO` | Insere dados diretamente na tabela | `INSERT INTO produtos (id, nome, preco) VALUES (1, 'Notebook', 3500.00);` |
| `INSERT SELECT` | Insere dados com base no resultado de uma consulta | `INSERT INTO produtos_backup SELECT * FROM produtos;` |
| `UPDATE` | Atualiza dados existentes na tabela | `UPDATE produtos SET preco = 4000 WHERE id = 1;` |
| `DELETE` | Remove linhas da tabela | `DELETE FROM produtos WHERE preco < 100;` |
| `DROP TABLE` | Exclui uma tabela existente | `DROP TABLE produtos_backup;` |
| `ALTER TABLE` | Altera a estrutura de uma tabela | `ALTER TABLE produtos ADD estoque INT;` |

---

## 📬 Contribuindo

Sinta-se à vontade para contribuir com este repositório! Caso tenha sugestões de exercícios, correções ou materiais, basta:

1. Fazer um **fork** do repositório.
2. Criar uma nova **branch** com sua contribuição.
3. Enviar um **pull request** para revisão.

---

## ⭐ Contato
Se tiver dúvidas ou sugestões, me encontre no **[LinkedIn](https://www.linkedin.com/in/seu-perfil/)** ou envie um e-mail para **seu-email@email.com**.

Boas consultas SQL! 🚀

