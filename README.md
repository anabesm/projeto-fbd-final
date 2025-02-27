# 📌 Projeto final - Fundamentos de Bancos de Dados

## 📌 Autores
Projeto desenvolvido por **Ana Beatriz e Ricardo Andrade**. 

## 📖 Sobre o Projeto
Este projeto cria uma interface interativa utilizando **Panel** para realizar consultas e atualizações em um banco de dados **PostgreSQL**. O protótipo permite:

- Criar usuários
- Consultar usuários por e-mail
- Atualizar informações de um usuário específico
- Deletar usuários

- Criar projeto
- Consultar projetos por e-mail
- Atualizar informações de um projeto específico
- Deletar projetos

## 🛠 Tecnologias Utilizadas
- **Python**
- **Panel** (para a interface interativa)
- **Pandas** (para manipulação de dados)
- **SQLAlchemy** e **Psycopg2** (para conexão com o banco de dados PostgreSQL)

## 📦 Requisitos
Antes de rodar o projeto, certifique-se de ter instalado:
- Python 3.x
- PostgreSQL instalado e rodando localmente
- Biblioteca Panel
- Biblioteca SQLAlchemy
- Biblioteca Psycopg2
- Biblioteca Pandas

Instale as dependências com:
```bash
pip install panel pandas sqlalchemy psycopg2
```

## 🔌 Configuração do Banco de Dados
O projeto conecta-se a um banco PostgreSQL local. Certifique-se de atualizar as credenciais no código antes de executar:
```python
con = pg.connect(host='localhost', dbname='transforma', user='postgres', password='SUA_SENHA')
cnx = 'postgresql://postgres:SUA_SENHA@localhost/transforma'
```