class PagesController < ApplicationController
    def index
        @categories = Category.all
        @products_on_sale = Product.where('sale_discount NOT NULL')
    end

    def cart 
    end

    def add_to_cart
        raise "#{params[:order_item][:quantity]}"
    end
end
