class Product < ApplicationRecord
  before_validation :strip_whitespace_and_convert_values
  before_validation :capitaze_name_and_description

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true, length: { maximum: 100 }


  private

  def strip_whitespace_and_convert_values
    # Remove espaços em branco e converte `price` para float
    self.price = price.to_s.strip.gsub(",", ".").to_f if price.present?

    # Remove espaços em branco e converte `stock_quantity` para integer
    self.stock_quantity = stock_quantity.to_s.strip.to_i if stock_quantity.present?
  end

  def capitaze_name_and_description
    self.name = name.titleize
    self.description = description.capitalize
  end

end
