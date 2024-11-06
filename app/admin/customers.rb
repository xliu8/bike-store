ActiveAdmin.register Customer do

    permit_params :first_name, :last_name, :email, :phone, :address, :state, :zip_code
  
    index do
      selectable_column
      id_column
      column :first_name
      column :last_name
      column :email
      column :phone
      column :address
      column :state
      column :zip_code
      actions
    end
  
    form do |f|
      f.inputs 'Customer Details' do
        f.input :first_name
        f.input :last_name
        f.input :email
        f.input :phone
        f.input :address
        f.input :state
        f.input :zip_code
      end
      f.actions
    end

  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :email, :phone, :address, :state, :zip_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :phone, :address, :state, :zip_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
