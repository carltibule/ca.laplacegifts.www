class PagesController < ApplicationController
    def index
        @last_ten_products = Product.last(10).reverse
        @first_three_from_last_ten = @last_ten_products.first(3)
        @remaining_seven_from_last_ten = @last_ten_products.last(7)
    end

    def about
    end
end
