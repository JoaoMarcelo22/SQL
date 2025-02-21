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

| Comando | Descrição | Exemplo |
|---------|-----------|---------|
| `SELECT` | Recupera dados de uma tabela | `SELECT * FROM clientes;` |
| `WHERE` | Filtra os resultados de uma consulta | `SELECT * FROM pedidos WHERE valor > 100;` |
| `LIKE` | Filtra resultados que correspondem a um padrão | `SELECT * FROM usuarios WHERE nome LIKE 'J%';` |
| `ORDER BY` | Ordena os resultados da consulta | `SELECT * FROM produtos ORDER BY preco DESC;` |
| `GROUP BY` | Agrupa resultados por um ou mais campos | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria;` |
| `HAVING` | Filtra os resultados de uma agregação | `SELECT categoria, COUNT(*) FROM produtos GROUP BY categoria HAVING COUNT(*) > 10;` |
| `JOIN` | Une dados de duas ou mais tabelas | `SELECT pedidos.id, clientes.nome FROM pedidos JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `INNER JOIN` | Retorna apenas correspondências entre tabelas | `SELECT * FROM vendas INNER JOIN clientes ON vendas.cliente_id = clientes.id;` |
| `LEFT JOIN` | Retorna todos os registros da tabela esquerda e correspondências da direita | `SELECT * FROM clientes LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `RIGHT JOIN` | Retorna todos os registros da tabela direita e correspondências da esquerda | `SELECT * FROM pedidos RIGHT JOIN clientes ON pedidos.cliente_id = clientes.id;` |
| `FULL JOIN` | Retorna todos os registros quando há correspondência em uma das tabelas | `SELECT * FROM clientes FULL JOIN pedidos ON clientes.id = pedidos.cliente_id;` |
| `INSERT` | Insere novos registros na tabela | `INSERT INTO produtos (nome, preco) VALUES ('Mouse', 50);` |
| `UPDATE` | Atualiza registros existentes | `UPDATE produtos SET preco = 60 WHERE nome = 'Mouse';` |
| `DELETE` | Remove registros de uma tabela | `DELETE FROM produtos WHERE preco < 10;` |
| `CREATE TABLE` | Cria uma nova tabela no banco de dados | `CREATE TABLE clientes (id INT, nome VARCHAR(100));` |
| `ALTER TABLE` | Modifica a estrutura de uma tabela | `ALTER TABLE clientes ADD COLUMN email VARCHAR(100);` |
| `DROP TABLE` | Remove uma tabela do banco de dados | `DROP TABLE clientes;` |
| `TRUNCATE TABLE` | Apaga todos os registros de uma tabela | `TRUNCATE TABLE pedidos;` |
| `LIMIT` | Restringe o número de registros retornados | `SELECT * FROM clientes LIMIT 10;` |
| `CASE` | Implementa uma estrutura condicional | `SELECT nome, CASE WHEN idade >= 18 THEN 'Adulto' ELSE 'Menor' END FROM pessoas;` |

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

