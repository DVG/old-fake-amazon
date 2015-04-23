class Product < ActiveRecord::Base
  has_many :product_images

  def list_price_difference
    list_price - price
  end

  def percentage_saved
    ((list_price_difference.to_f/list_price.to_f) * 100).to_i
  end
end
