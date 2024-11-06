class AddIndexesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :brand_id
    add_index :products, :category_id
  end
end
