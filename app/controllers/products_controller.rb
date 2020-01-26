class ProductsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @products = Product.search_for_index(params)
  end

  def show; end

  private

  def set_product
    @product = Product.find_by(id: params[:id])
    return redirect_to root_path, alert: "Product not found" if @product.blank?
  end
end
