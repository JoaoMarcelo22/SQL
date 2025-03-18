# 📌 Repositório de Aprendizado em SQL

Bem-vindo ao **Repositório de Aprendizado em SQL**! Aqui você encontrará diversos materiais para aprimorar suas habilidades em SQL, incluindo:

✅ **Exercícios práticos** para treinar suas consultas.
✅ **PDFs explicativos** sobre teoria e melhores práticas.
✅ **Tabelas e comandos SQL** organizados para facilitar a consulta.
✅ **Casos práticos** baseados em cenários do mundo real.

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
├── 📂 Materiais  # PDFs com teoria e dicas
│   ├── fundamentos_sql.pdf
│   ├── joins_relacoes.pdf
│   ├── performance_otimizacao.pdf
│   └── modelagem_dados.pdf
└── 📂 Exemplos  # Casos práticos e consultas comentadas
    ├── analise_vendas.sql
    ├── relatorio_clientes.sql
    └── dashboard_financeiro.sql
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

| Comando               | Descrição                                                         | Exemplo |
|-----------------------|-----------------------------------------------------------------|---------|
| `SELECT`             | Recupera dados de uma tabela                                    | `SELECT * FROM clientes;` |
| `TOP`               | Traz os N primeiros casos                                       | `SELECT TOP(10) * FROM clientes;` |
| `TOP + PERCENT`     | Traz os N primeiros casos em relação à porcentagem             | `SELECT TOP(10) PERCENT * FROM clientes;` |
| `DISTINCT`          | Seleciona os valores distintos                                  | `SELECT DISTINCT clientesName FROM clientes;` |
| `AS`               | Aliasing, responsável por nomear ou renomear uma coluna         | `SELECT clientesName AS 'Nome do Cliente' FROM clientes;` |
| `WHERE`            | Filtra os resultados de uma consulta                            | `SELECT * FROM pedidos WHERE valor > 100;` |
| `BETWEEN`          | Filtra resultados dentro de um range                            | `SELECT * FROM usuarios WHERE idade BETWEEN 10 AND 50;` |
| `LIKE`             | Filtra resultados que correspondem a um padrão                  | `SELECT * FROM usuarios WHERE nome LIKE 'J%';` |
| `IS NULL/ IS NOT NULL` | Filtra resultados que são nulos ou não nulos              | `SELECT * FROM usuarios WHERE nome IS NOT NULL;` |
| `ORDER BY`         | Ordena os resultados da consulta                                | `SELECT * FROM produtos ORDER BY preco DESC;` |
| `GROUP BY`         | Agrupa resultados por um ou mais campos                         | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria;` |
| `HAVING`           | Filtra os resultados de uma agregação                           | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria HAVING COUNT(*) > 10;` |
| `JOIN`            | Une dados de duas ou mais tabelas                                | `SELECT pedidos.id, clientes.nome FROM pedidos JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `INNER JOIN`      | Retorna apenas correspondências entre tabelas                    | `SELECT * FROM vendas INNER JOIN clientes ON vendas.cliente_id = clientes.id;` |
| `LEFT JOIN`       | Retorna todos os registros da tabela esquerda e correspondências da direita | `SELECT * FROM clientes LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `RIGHT JOIN`      | Retorna todos os registros da tabela direita e correspondências da esquerda | `SELECT * FROM pedidos RIGHT JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `FULL JOIN`       | Retorna todos os registros quando há correspondência em uma das tabelas | `SELECT * FROM clientes FULL JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `CROSS JOIN`      | Retorna todos os registros para todas as colunas (replica os valores) | `SELECT * FROM clientes CROSS JOIN pedidos;` |
| `UNION`           | Une duas tabelas                                                | `SELECT * FROM FactOnlineSales UNION SELECT * FROM FactStoreSales ORDER BY DataVenda DESC;` |
| `INSERT`          | Insere novos registros na tabela                                | `INSERT INTO produtos (nome, preco) VALUES ('Mouse', 50);` |
| `UPDATE`          | Atualiza registros existentes                                   | `UPDATE produtos SET preco = 60 WHERE nome = 'Mouse';` |
| `DELETE`          | Remove registros de uma tabela                                 | `DELETE FROM produtos WHERE preco < 10;` |
| `CREATE TABLE`    | Cria uma nova tabela no banco de dados                         | `CREATE TABLE clientes (id INT, nome VARCHAR(100));` |
| `ALTER TABLE`     | Modifica a estrutura de uma tabela                             | `ALTER TABLE clientes ADD COLUMN email VARCHAR(100);` |
| `DROP TABLE`      | Remove uma tabela do banco de dados                           | `DROP TABLE clientes;` |
| `TRUNCATE TABLE`  | Apaga todos os registros de uma tabela                        | `TRUNCATE TABLE pedidos;` |
| `LIMIT`          | Restringe o número de registros retornados                     | `SELECT * FROM clientes LIMIT 10;` |
| `CASE`           | Implementa uma estrutura condicional                           | `SELECT nome, CASE WHEN idade >= 18 THEN 'Adulto' ELSE 'Menor' END FROM pessoas;` |
| `SQL_VARIANT_PROPERTY` | Retorna a propriedade de um valor do tipo `sql_variant` | `SELECT SQL_VARIANT_PROPERTY(CAST(10 AS sql_variant), 'BaseType');` |
| `CAST`           | Converte um tipo de dado para outro                            | `SELECT CAST(123.45 AS INT);` |
| `FORMAT`         | Formata um valor para exibição                                 | `SELECT FORMAT(GETDATE(), 'dd/MM/yyyy');` |
| `ROUND`          | Arredonda um número para um número específico de casas decimais | `SELECT ROUND(123.456, 2);` |
| `FLOOR`          | Arredonda um número para baixo, para o inteiro mais próximo    | `SELECT FLOOR(123.9);` → Retorna `123` |
| `CEILING`        | Arredonda um número para cima, para o inteiro mais próximo     | `SELECT CEILING(123.1);` → Retorna `124` |
| `DECLARE`        | Declara uma variável                                           | `DECLARE @nomeCliente VARCHAR(100);` |
| `SET`            | Atribui um valor a uma variável                               | `SET @nomeCliente = 'João';` |


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

