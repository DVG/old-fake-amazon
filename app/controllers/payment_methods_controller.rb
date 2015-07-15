class PaymentMethodsController < ApplicationController

  def create
    @payment_method = current_user.payment_methods.create payment_method_params
  end

private

  def payment_method_params
    params.require(:payment_method).permit(:name_on_card, :card_number, :expiration, :security_code)
  end
end