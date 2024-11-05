class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :brand_id
      t.integer :category_id
      t.decimal :price
      t.integer :model_year
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
