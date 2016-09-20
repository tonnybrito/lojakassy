class Product < ApplicationRecord
  validates :category, presence: true, length: 1..20
  validates :title, presence: true, length: 3..100
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :image, presence: true,
    format: {with:/\A(http(s|)?:\/\/.*\.(?:png|jpg))\Z/i}
  validates :description, length: { maximum: 1500 }

  def self.categories
    records = Product.select(:category).group(:category).all
    categories = records.map { |p| p.category }
    categories.sort
  end
end
