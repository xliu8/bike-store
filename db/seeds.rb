require 'csv'

# puts "Truncating all tables..."
# ActiveRecord::Base.connection.truncate_tables(
#   *ActiveRecord::Base.connection.tables
# )

# puts "Resetting primary key sequences..."
# ActiveRecord::Base.connection.tables.each do |table|
#   ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='#{table}'")
# end

# puts "Database cleaned and primary keys reset!"
puts "Seeding categories..."
CSV.foreach(Rails.root.join('lib/assets/csv/categories.csv'), headers: true) do |row|
  Category.find_or_create_by!(category_name: row['category_name'])
  puts "Created category: #{row['category_name']}"
end

puts "Seeding brands..."
CSV.foreach(Rails.root.join('lib/assets/csv/brands.csv'), headers: true) do |row|
  Brand.find_or_create_by!(brand_name: row['brand_name'])
  puts "Created brand: #{row['brand_name']}"
end

puts "Seeding products..."
CSV.foreach(Rails.root.join('lib/assets/csv/products.csv'), headers: true) do |row|
  # 使用 category_id 和 brand_id 来查找关联的分类和品牌
  category = Category.find_by(id: row['category_id'])
  brand = Brand.find_by(id: row['brand_id'])

  if category && brand
    Product.create!(
      product_name: row['product_name'],
      price: row['list_price'].to_f,
      stock_quantity: rand(1..100),
      model_year: row['model_year'].to_i,
      product_description: "Sample description for #{row['product_name']}",
      available: row['available'] == 'true',
      category: category,
      brand: brand
    )
    puts "Created product: #{row['product_name']}"
  else
    puts "Missing category or brand for product: #{row['product_name']}"
  end
end