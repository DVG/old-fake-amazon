class PaymentMethodsController < ApplicationController

  def create
    @payment_method = current_user.payment_methods.create payment_method_params
  end

private

  def payment_method_params
    params.require(:payment_method).permit(:card_number, :expiration_month, :expiration_year, :security_code)
  end
end