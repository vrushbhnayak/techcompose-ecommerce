class ProductCartsController < ApplicationController
  def create
    # product = Product.find(params[:product_id])
    cart_item = current_userdevise.product_carts.find_by(product_id: params[:product_id])
    if cart_item
      cart_item.update(quantity: cart_item.quantity + 1)
    else
      current_userdevise.product_carts.create(product_id: params[:product_id], quantity: 1)
    end
    redirect_to root_path
  end

  def index
    # product_cart = ProductCart.includes(:product)
    # product_cart = current_userdevise
    @product_cart = current_userdevise.product_carts
  end
end
