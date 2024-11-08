ActiveAdmin.register Page do
    permit_params :title, :content
  
    form do |f|
      f.inputs 'Page Details' do
        f.input :title
        li do
          label :content, class: 'trix-editor-label'
          f.rich_text_area :content
        end
      end
      f.actions
    end
  
    index do
      selectable_column
      id_column
      column :title
      actions
    end
  
    show do
        attributes_table do
          row :title
          row :content do
            div resource.content
      end
    end
  end

    filter :title
    filter :created_at
    filter :updated_at
  end
  