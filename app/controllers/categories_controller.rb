class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    
    if @category.name == 'On sale'
      @products_in_tag = Product.where('sale_discount IS NOT NULL')
    elsif @category.name == 'New'
      @products_in_tag = Product.order('created_at DESC').limit(10)
    elsif @category.name == 'Updated'
      @products_in_tag = Product.order('updated_at DESC').limit(5)
    else
      @products_in_tag = @category.products
    end
  end
end
