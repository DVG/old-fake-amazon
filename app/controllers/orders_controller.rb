class OrdersController < ApplicationController
  def create
    cart = current_user.cart
    @order = Order.create(order_params)
    cart.line_items.update_all(cart_id: nil, order_id: @order.id)
    redirect_to confirmation_order_path(@order)
  end

  def confirmation
    @order = Order.find params[:id]
    @recommended = Product.where.not(id: @order.products.map(&:id)).limit(5)
  end

private

  def order_params
    params.require(:order).permit(:shipping_method_id)
  end
end