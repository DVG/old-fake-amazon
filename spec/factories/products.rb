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

def upload_image(image_name, product: nil)
  product.product_images.find_or_create_by(image: File.open("db/seeds/images/#{image_name}"))
end

FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    price 4.99
    list_price { price + 2 }
    category
    after(:create) do |product, factory|
      upload_image("psvita_003.jpg", product: product)
    end
  end
end