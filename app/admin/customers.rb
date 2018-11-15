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
permit_params :first_name, :middle_name, :last_name, :home_address, :shipping_address, :image, :phone_number, :cell_number, :email_address, :password

form do |f|
    f.inputs "Customer Information" do
      f.input :first_name
      f.input :middle_name
      f.input :last_name
      f.input :image
      f.input :phone_number
      f.input :cell_number
      f.input :email_address
      f.input :password
    end

    f.inputs "Home Address" do
      1.times do 
        f.object.home_address.build
      end

      f.fields_for :home_address, heading: false do |ha|
        ha.input :first_address_line, heading: 'Address Line 1'
        ha.input :second_address_line, heading: 'Address Line 2'
        ha.input :city
        ha.input :province
        ha.input :postal_code
        ha.input :country
        ha.actions
      end
    end

    # f.inputs "Shipping Address" do
    #   f.has_many :shipping_address, heading: false do |sa|
    #     sa.input :first_address_line, heading: 'Address Line 1'
    #     sa.input :second_address_line, heading: 'Address Line 2'
    #     sa.input :city
    #     sa.input :province
    #     sa.input :postal_code
    #     sa.input :country
    #     sa.actions
    #   end
    # end

    f.actions
  end
end
