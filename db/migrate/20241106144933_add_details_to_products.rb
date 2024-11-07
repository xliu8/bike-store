class AddDetailsToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :product_description, :text
    add_column :products, :available, :boolean
  end
end
