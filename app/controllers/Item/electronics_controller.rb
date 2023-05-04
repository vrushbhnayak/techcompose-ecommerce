class Item::ElectronicsController < ApplicationController
  def index
    @electronics = Product.all
  end

  def new
    @electronics = Product.new
  end

  def create
    @electronics = Product.create(electronics_params)

    if @electronics.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def electronics_params
    params.require(:product).permit(:name, :price, :description, :category)
  end
end
