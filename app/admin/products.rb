ActiveAdmin.register Product do
  permit_params :product_name, :brand_id, :category_id, :price, :model_year, :stock_quantity, :product_description, :available

  # 表单配置
  form do |f|
    f.inputs do
      f.input :product_name
      f.input :brand, as: :select, collection: Brand.all.pluck(:brand_name, :id)
      f.input :category, as: :select, collection: Category.all.pluck(:category_name, :id)
      f.input :price
      f.input :model_year
      f.input :stock_quantity
      f.input :product_description
      f.input :available
    end
    f.actions
  end

  # 列表配置
  index do
    selectable_column
    id_column
    column :product_name
    column :brand
    column :category
    column :price
    column :model_year
    column :stock_quantity
    column :product_description
    column :available
    actions
  end

  # 过滤器配置（根据需要添加必要字段）
  filter :product_name
  filter :brand
  filter :category
  filter :price
  filter :model_year
  filter :stock_quantity
  filter :available
end
