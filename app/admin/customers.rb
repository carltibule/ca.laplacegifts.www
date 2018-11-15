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
    permit_params :first_name, :middle_name, :last_name, :first_address_line, :second_address_line, :city, :province_id, :postal_code, :phone_number, :cell_number, :email_address, :password

    form do |f|
        f.inputs "Customer information" do
            f.input :first_name
            f.input :middle_name
            f.input :last_name
            f.input :image
            f.input :phone_number
            f.input :cell_number
            f.input :email_address
            f.input :password
        end

        f.inputs "Address information" do
            f.input :first_address_line, :label => 'Address line 1'
            f.input :second_address_line
            f.input :city
            f.input :province
            f.input :postal_code
        end

        f.actions
    end

    index do
        column :first_name
        column :middle_name
        column :last_name
        column :email_address
        actions
    end
end
