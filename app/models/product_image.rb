# == Schema Information
#
# Table name: product_images
#
#  id         :integer          not null, primary key
#  product_id :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductImage < ActiveRecord::Base
  belongs_to :product

  mount_uploader :image, ProductImageUploader
end
