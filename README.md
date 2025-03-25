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
│   ├── basico.sql
│   ├── intermediario.sql
│   ├── avancado.sql
│   └── desafios.sql
├── 📂 Materiais  # PDFs com teoria,dicas,Casos práticos e consultas comentadas
    ├── fundamentos_sql.pdf
    ├── joins_relacoes.pdf
    ├── performance_otimizacao.pdf
    └── modelagem_dados.pdf
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

## Manipulação de Dados
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `INSERT` | Insere novos registros na tabela | `INSERT INTO produtos (nome, preco) VALUES ('Mouse', 50);` |
| `UPDATE` | Atualiza registros existentes | `UPDATE produtos SET preco = 60 WHERE nome = 'Mouse';` |
| `DELETE` | Remove registros de uma tabela | `DELETE FROM produtos WHERE preco < 10;` |
| `CAST`| Converte um tipo de dado para outro | `SELECT CAST(123.45 AS INT);`|

## Estruturas e Modificação de Tabelas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `CREATE TABLE` | Cria uma nova tabela no banco de dados | `CREATE TABLE clientes (id INT, nome VARCHAR(100));` |
| `ALTER TABLE` | Modifica a estrutura de uma tabela | `ALTER TABLE clientes ADD COLUMN email VARCHAR(100);` |
| `DROP TABLE` | Remove uma tabela do banco de dados | `DROP TABLE clientes;` |
| `TRUNCATE TABLE` | Apaga todos os registros de uma tabela | `TRUNCATE TABLE pedidos;` |

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

