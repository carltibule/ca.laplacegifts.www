ActiveAdmin.register Customer do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    permit_params :first_name, :last_name, :photo, :first_address_line, :second_address_line, :city, :province, :postal_code, :phone_number

    index do
        column :first_name
        column :last_name
        column :email
        actions
    end
end
