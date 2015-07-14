class CartsController < ApplicationController
  
  def index
    redirect_to current_user.cart
  end

  def show
    @cart = current_user.cart
  end

  def checkout
    @cart = current_user.cart
  end

end