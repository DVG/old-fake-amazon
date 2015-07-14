class CartsController < ApplicationController

  before_action :authenticate
  
  def index
    redirect_to current_user.cart
  end

  def show
    @cart = current_user.cart
  end

  def checkout
    @cart = current_user.cart
  end

private

  def authenticate
    redirect_to new_user_session_path unless current_user
  end

end