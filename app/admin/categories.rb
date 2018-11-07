ActiveAdmin.register Category do
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
    permit_params :name

    # SHOW view
    show do
        attributes_table do
            row :name

            row 'Products' do |category|
                category.products.map{ |product|
                    link_to product.title, admin_product_path(product)
                }.join("<br/>").html_safe
            end
        end
    end

end
