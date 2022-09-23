class Product < ApplicationRecord
  validates :category, presence: true, length: 1..20
  validates :title, presence: true, length: 3..100
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :image, presence: true
  validates :description, length: { maximum: 1500 }

  def image=(value)
    if value.is_a?(String)
      super(value)
    else
      image = "#{Time.now.to_i}-#{value.original_filename}"
      caminho_da_imagem = "#{Rails.root}/public/images/"
      caminho_com_imagem = "#{caminho_da_imagem}#{image}"

      Dir.mkdir(caminho_da_imagem) unless Dir.exist?(caminho_da_imagem) 
      File.open(caminho_com_imagem, "wb") { |f| f.write(value.read)}

      super("/images/#{image}")
    end
  end

  def self.categories
    records = Product.select(:category).group(:category).all
    categories = records.map { |p| p.category }
    categories.sort
  end

  def self.search(query)
    Product.where('title LIKE ? OR category LIKE ?', "%#{query}%", "%#{query}%")
  end
end
