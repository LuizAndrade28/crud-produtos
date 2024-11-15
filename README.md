# Backend (Rails API)

## Descrição

Esse é o backend de uma aplicação CRUD de Produtos, desenvolvido em Ruby on Rails no modo API-only. Ele fornece endpoints RESTful para criar, visualizar, atualizar e excluir produtos.

## Como Configurar e Rodar o Projeto Localmente

> [!IMPORTANT]
> ### Instruções de Instalação
> Este projeto usa Ruby, Rails e PostgreSQL. Para configurar seu ambiente de desenvolvimento, siga estes passos:

### Pré-requisitos:

Ruby (>= 3.3.1)

Rails (>= 7.1.3)

PostgreSQL (>= 1.1)

## Configuração

### 1. Clone o repositório e navegue até o diretório:

```sh
git@github.com:LuizAndrade28/crud-produtos.git
cd crud-produtos
```

### 2. Instale as dependências:

> [!NOTE]
> Para instalar as gems, você precisa ter o bundler instalado. Caso não tenha, você pode instalá-lo com o seguinte comando:

```sh
gem install bundler
```

Agora você precisa instalar todas as gemas necessárias contidas no `GEMFILE`.

```sh
bundle install
```

### 3. Configure o banco de dados:

```sh
rails db:create db:migrate db:seed
```

### 4. Inicie o servidor:
> [!NOTE]
> O servidor está pre-configurado para mudar a porta default e será executado em http://localhost:3005.

```sh
rails s
```

## Observações

### Endpoints da API

| Método | Endpoint | Descrição |
| ------------- | ------------- | ------------- |
| GET  | /products | Retorna todos os produtos. |
| GET  | /products/:id | Retorna um produto pelo ID.  |
| POST  | /products | Cria um novo produto.  |
| PUT  | /products/:id | Atualiza um produto pelo ID.  |
| DELETE  | /products/:id | Exclui um produto pelo ID.  |

### Estrutura JSON para Produto

```sh
{
  "id": 1,
  "name": "Produto Exemplo",
  "price": 99.99,
  "stock_quantity": 10,
  "description": "Descrição do produto"
}
```

### Validações

- name: Obrigatório.
- price: Obrigatório, deve ser um número positivo (float).
- stock_quantity: Obrigatório, deve ser um número inteiro positivo.
- description: Obrigatório.

### Ambiente de desenvolvimento
> [!CAUTION]
> Atenção: isso não é recomendado em produção.

Para simplificação, o CORS está configurado para permitir todas as origens. Isso não é seguro para produção e deve ser ajustado conforme necessário.
