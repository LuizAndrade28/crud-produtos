class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { maximum: 100 }
end


# - Cada produto deve ter os seguintes atributos:
#    - name (string): Nome do produto.
#    - price (float): Preço do produto, com validação para ser positivo.
#    - stock_quantity (integer): Quantidade em estoque, com validação para
# ser um número inteiro positivo.
#    - description (text): Descrição do produto.
# - O backend deve retornar respostas JSON para cada operação.
# Validações:
# - Todos os campos devem ser obrigatórios.
# - O preço (price) deve ser um valor numérico positivo.
# - A quantidade em estoque (stock_quantity) deve ser um número inteiro
# positivo
