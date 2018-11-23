class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    helper_method :current_order

    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new
        end
    end

    protected

    def configure_permitted_parameters
        # devise_parameter_sanitizer.for(:sign_up) << :name
        # devise_parameter_sanitizer.for(:account_update) << :name
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo,
        :first_address_line, :second_address_line, :city, :province, :postal_code, :phone_number])

        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo,
            :first_address_line, :second_address_line, :city, :province, :postal_code, :phone_number])
    end
end
