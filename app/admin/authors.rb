ActiveAdmin.register Author do
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

permit_params :first_name, :middle_name, :last_name, :image, :description

    form do |f|
        f.inputs do
            f.input :first_name
            f.input :middle_name
            f.input :last_name
            f.input :description
            f.input :image, as: :file
        end
          f.actions
    end

    index do
        id_column

        column "Image" do |author|
            image_tag author.image.variant(resize: "150x190")
        end

        column :first_name
        column :last_name
        actions
    end

    show do 
        attributes_table do
            row :image do |ad|
                image_tag url_for(ad.image)
            end
            row :first_name
            row :middle_name
            row :last_name
            row :description

            row 'Products' do |author|
                author.products.map{ |product|
                    link_to product.title, admin_product_path(product)
                }.join("<br/>").html_safe
            end
        end
    end
end
