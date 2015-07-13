# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  list_price  :decimal(8, 2)
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Product < ActiveRecord::Base
  belongs_to :category
  has_many :product_images
  validates :category, presence: true

  def list_price_difference
    list_price - price
  end

  def percentage_saved
    ((list_price_difference.to_f/list_price.to_f) * 100).to_i
  end
end
