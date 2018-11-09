ActiveAdmin.register Product do
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
permit_params :title, :description, :image, :product_type, :product_format, :product_language, :isbn_10, :isbn_13, :price, :qoh_new, :qoh_used, :length, 
    :width, :height, :weight, :author_id, category_ids:[]

    show do
        attributes_table do
            row :image do |ad|
                if ad.image.url.nil?
                    image_tag('NoImageAvailablePicture.png', size:'317x400', alt: 'Placeholder image')
                else
                    image_tag ad.image.url(:detail_size)
                end
            end
            row :title
            row :description
            row :product_type
            row :product_format
            row :product_language
            row :isbn_10
            row :isbn_13
            row :price
            row :qoh_new
            row :qoh_used
            row :length
            row :width
            row :height
            row :weight
            row :category
            row :author
            row :updated_at
        end
    end

    index do
        id_column
        column "Image" do |product|
            if product.image.url.nil?
                image_tag('NoImageAvailablePicture.png', size:'150x190', alt: 'Placeholder image')
            else
                image_tag product.image.url(:list_size)
            end
        end

        column :title
        column :product_type
        column "ISBN 10", :isbn_10
        column "ISBN 13", :isbn_13
        column :price
        column "New", :qoh_new
        column "Used", :qoh_used
        actions
    end

    form do |f|
        f.inputs do
            f.input :title
            f.input :description
            f.input :image
            f.input :product_type
            f.input :product_format
            f.input :product_language
            f.input :isbn_10
            f.input :isbn_13
            f.input :price
            f.input :qoh_new
            f.input :qoh_used
            f.input :length
            f.input :width
            f.input :height
            f.input :weight
            f.input :author
        end

        f.inputs 'Select categories' do
            f.input :categories, as: :check_boxes
        end

        f.actions
    end
end
