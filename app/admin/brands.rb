ActiveAdmin.register Brand do
  permit_params :brand_name

  form do |f|
    f.inputs do
      f.input :brand_name
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :brand_name
    actions
  end

  filter :brand_name
  filter :created_at
end
