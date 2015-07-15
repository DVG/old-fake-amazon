class ShippingAddressesController < ApplicationController

  def create
    @shipping_address = current_user.shipping_addresses.create shipping_address_params
  end

private

  def shipping_address_params
    params.require(:shipping_address).permit(:addressee, :street_address, :city, :state_code, :zip_code)
  end

end