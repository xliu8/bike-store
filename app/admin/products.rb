ActiveAdmin.register Product do
  permit_params :product_name, :brand_id, :category_id, :price, :model_year, :stock_quantity, :product_description, :available, :image

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
      f.input :image, as: :file
    end
    f.actions
  end

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
    column "Image" do |product|
      if product.image.attached?
        image_tag url_for(product.image), size: "50x50"
      else
        "No Image"
      end
    end
    actions
  end

  show do
    attributes_table do
      row :product_name
      row :brand
      row :category
      row :price
      row :model_year
      row :stock_quantity
      row :available
      row :product_description
      row :image do |product|
        if product.image.attached?
          image_tag url_for(product.image)
        else
          "No Image"
        end
      end
    end
  end  

  filter :product_name
  filter :brand
  filter :category
  filter :price
  filter :model_year
  filter :stock_quantity
  filter :available
end
