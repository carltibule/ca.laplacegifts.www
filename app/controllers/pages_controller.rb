class PagesController < ApplicationController
    def index
        @categories = Category.all
        @products_on_sale = Product.where('sale_discount NOT NULL')
    end
end
