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
## Comandos SQL e Exemplos

## Funções Condicionais
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| **CASE WHEN THEN ELSE** | Cria uma estrutura condicional | `SELECT clientesName, CASE WHEN idade >= 18 THEN 'Adulto' ELSE 'Menor' END AS faixa_etaria FROM clientes;` |
| **CASE ADITIVO** | Verifica múltiplas condições sem `WHEN` repetido | `SELECT categoria, CASE categoria WHEN 'A' THEN 'Alta' WHEN 'B' THEN 'Média' ELSE 'Baixa' END AS prioridade FROM pedidos;` |
| **CASE ANINHADO** | Um `CASE` dentro de outro `CASE` | `SELECT nome, CASE WHEN salario > 5000 THEN 'Alto' WHEN salario BETWEEN 3000 AND 5000 THEN CASE WHEN tempo_servico > 5 THEN 'Médio-Alto' ELSE 'Médio' END ELSE 'Baixo' END AS classificacao FROM funcionarios;` |
| **IIF** | Alternativa ao `CASE`, retorna um valor baseado em uma condição (SQL Server) | `SELECT IIF(idade >= 18, 'Adulto', 'Menor') AS faixa_etaria FROM clientes;` |
| **IIF COMPOSTO** | `IIF` com múltiplas condições encadeadas | `SELECT IIF(idade >= 60, 'Idoso', IIF(idade >= 18, 'Adulto', 'Menor')) AS faixa_etaria FROM clientes;` |
| **ISNULL** | Substitui valores `NULL` por um padrão | `SELECT nome, ISNULL(email, 'Sem Email') AS email_corrigido FROM clientes;` |

## Manipulação de Strings e Datas
| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| **LEN** | Retorna o número de caracteres em uma string | `SELECT LEN(nome) AS tamanho_nome FROM clientes;` |
| **DATALENGTH** | Retorna o tamanho da string em bytes | `SELECT DATALENGTH(nome) AS bytes_nome FROM clientes;` |
| **CONCAT** | Concatena strings | `SELECT CONCAT(nome, ' ', sobrenome) AS nome_completo FROM clientes;` |
| **LEFT** | Retorna os primeiros caracteres de uma string | `SELECT LEFT(nome, 3) AS inicio_nome FROM clientes;` |
| **RIGHT** | Retorna os últimos caracteres de uma string | `SELECT RIGHT(nome, 3) AS fim_nome FROM clientes;` |
| **REPLACE** | Substitui parte de uma string | `SELECT REPLACE(nome, 'a', 'X') AS nome_modificado FROM clientes;` |
| **TRANSLATE** | Substitui múltiplos caracteres | `SELECT TRANSLATE(nome, 'aeiou', '12345') AS nome_codificado FROM clientes;` |
| **STUFF** | Remove e insere texto em uma string | `SELECT STUFF('SQL Server', 5, 3, 'Express') AS resultado;` |
| **UPPER** | Converte para maiúsculas | `SELECT UPPER(nome) AS nome_maiusculo FROM clientes;` |
| **LOWER** | Converte para minúsculas | `SELECT LOWER(nome) AS nome_minusculo FROM clientes;` |
| **FORMAT** | Formata valores (datas, números) | `SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') AS data_formatada;` |
| **CHARINDEX** | Encontra a posição de um caractere em uma string | `SELECT CHARINDEX('a', nome) AS posicao FROM clientes;` |
| **SUBSTRING** | Extrai parte de uma string | `SELECT SUBSTRING(nome, 2, 3) AS trecho FROM clientes;` |
| **TRIM** | Remove espaços em branco das extremidades | `SELECT TRIM(nome) AS nome_sem_espacos FROM clientes;` |
| **LTRIM** | Remove espaços à esquerda | `SELECT LTRIM(nome) AS nome_sem_espacos_inicio FROM clientes;` |
| **RTRIM** | Remove espaços à direita | `SELECT RTRIM(nome) AS nome_sem_espacos_fim FROM clientes;` |
| **DAY** | Extrai o dia de uma data | `SELECT DAY(data_nascimento) AS dia FROM clientes;` |
| **MONTH** | Extrai o mês de uma data | `SELECT MONTH(data_nascimento) AS mes FROM clientes;` |
| **YEAR** | Extrai o ano de uma data | `SELECT YEAR(data_nascimento) AS ano FROM clientes;` |
| **DATEFROMPARTS** | Cria uma data a partir de partes | `SELECT DATEFROMPARTS(2024, 7, 9) AS data_completa;` |
| **GETDATE** | Retorna a data e hora atuais | `SELECT GETDATE() AS agora;` |
| **SYSDATETIME** | Retorna a data e hora atuais com maior precisão | `SELECT SYSDATETIME() AS agora_preciso;` |
| **DATEPART** | Retorna uma parte específica da data | `SELECT DATEPART(YEAR, GETDATE()) AS ano;` |
| **DATENAME** | Retorna o nome de uma parte da data | `SELECT DATENAME(MONTH, GETDATE()) AS mes;` |
| **DATEADD** | Adiciona/subtrai períodos de tempo a uma data | `SELECT DATEADD(DAY, 30, GETDATE()) AS daqui_30_dias;` |
| **DATEDIFF** | Calcula a diferença entre duas datas | `SELECT DATEDIFF(YEAR, data_nascimento, GETDATE()) AS idade FROM clientes;` |

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

