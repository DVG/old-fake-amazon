class LineItemsController < ApplicationController

  def create
    @line_item = current_user.cart.line_items.find_by(product_id: params[:line_item][:product_id])
    if @line_item
      @line_item.update_attributes(quantity: @line_item.quantity + params[:line_item][:quantity].to_i)
    else
      @line_item = LineItem.create line_item_params
    end
    redirect_to root_path, notice: "#{@line_item.product.name} added to your cart!"
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to current_user.cart
  end

private
  
  def line_item_params
    params.require(:line_item).permit(:cart_id, :product_id, :quantity)
  end

end