ActiveAdmin.register Address do
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
    permit_params :first_address_line, :second_address_line, :city, :province, :postal_code, :country

    form do |f|
        f.inputs do
            f.input :first_address_line, :label => 'Address Line 1'
            f.input :second_address_line, :label => 'Address Line 2'
            f.input :city
            f.input :province
            f.input :postal_code
            f.input :country, as: :select, collection: ['Canada']
        end
          f.actions
    end
end
