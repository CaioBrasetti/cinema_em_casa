# README

# Projeto Ruby on Rails - Plataforma de Consumo de APIs de Filmes e Atores

![Ruby Version](https://img.shields.io/badge/Ruby-3.1.2-red.svg)
![Rails Version](https://img.shields.io/badge/Rails-7.0.4-orange.svg)

Este é um projeto Ruby on Rails que tem como objetivo criar uma plataforma para consumir APIs externas que fornecem dados sobre filmes e atores. A aplicação permitirá a manipulação do banco de dados, cruzamento de tabelas, realização de testes com rspec, implementação de CRUD (Create, Read, Update, Delete) e um frontend utilizando HTML, CSS3 e Bootstrap.

## Funcionalidades

- Consumo de APIs externas para obter informações sobre filmes e atores.
- Armazenamento dos dados obtidos em um banco de dados para futuras consultas.
- Cruzamento de tabelas para relacionar filmes e atores, permitindo pesquisas e análises mais detalhadas.
- Testes automatizados com RSpec para garantir a integridade e funcionalidade das rotas e modelos.
- Implementação do CRUD para gerenciar informações sobre filmes e atores através de uma interface amigável.

## Requisitos

Certifique-se de ter as seguintes dependências instaladas:

- Ruby 3.1.2
- Ruby on Rails 7.0.4
- Bootstrap 4.1.3
- Banco de dados PostgreSQL
- API TMDB > https://developers.themoviedb.org/3/getting-started/introduction

## Instalação

1. Clone este repositório para o seu ambiente local:

```bash
git clone https://github.com/CaioBrasetti/cinema_em_casa.git
cd cinema_em_casa
```

2. Instale as gemas necessárias:

```bash
bundle install
```

3. Configure o banco de dados no arquivo `config/database.yml`.

4. Execute as migrações do banco de dados:

```bash
rails db:migrate
```

5. Inicie o servidor Rails:

```bash
rails server
```

## Uso

Após seguir os passos de instalação, acesse a aplicação em `http://localhost:3000`.

## Testes

Para executar os testes automatizados com RSpec, utilize o seguinte comando:

```bash
rspec
```

## Frontend

O frontend foi construído utilizando HTML, CSS3 e Bootstrap para garantir uma experiência de usuário agradável e responsiva.



