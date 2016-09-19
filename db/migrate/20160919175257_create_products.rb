class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
