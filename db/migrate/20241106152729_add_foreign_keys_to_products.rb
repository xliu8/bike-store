class AddForeignKeysToProducts < ActiveRecord::Migration[7.0]
  def change
    
    add_foreign_key :products, :brands, column: :brand_id

   
    add_foreign_key :products, :categories, column: :category_id
  end
end
