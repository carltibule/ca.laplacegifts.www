class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @products_in_tag = @category.products
  end
end
