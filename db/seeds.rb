puts "====> Seeding Development Database With Data"

def upload_image(image_name, product: nil)
  product.product_images.find_or_create_by(image: File.open("db/seeds/images/#{image_name}"))
end

puts "====> Creating Video Games Category"
video_games = Category.find_or_create_by name: "Video Games"

puts "====> Creating Products"
ps4 = Product.find_or_create_by(name: "Playstation 4", list_price: 399.99, price: 349.99, category: video_games)
upload_image "ps4_001.jpg", product: ps4
upload_image "ps4_002.jpg", product: ps4
upload_image "ps4_003.jpg", product: ps4

vita = Product.find_or_create_by(name: "Playstation Vita", list_price: 199.99, price: 169.99, category: video_games)

upload_image "psvita_001.jpg", product: vita
upload_image "psvita_002.jpg", product: vita
upload_image "psvita_003.jpg", product: vita

disgaea = Product.find_or_create_by name: "Disgaea 3: Absence of Detention", list_price: 29.99, price: 29.99, category: video_games

upload_image "disgaea_3_001.jpg", product: disgaea

puts "====> Creating Shipping Methods"
ShippingMethod.find_or_create_by identifier: ShippingMethod::STANDARD_SHIPPING, name: "Standard Shipping", price_per_item: 5.99
ShippingMethod.find_or_create_by identifier: ShippingMethod::SUPER_SAVER_SHIPPING, name: "FREE Super Saver Shipping", price_per_item: 0
ShippingMethod.find_or_create_by identifier: ShippingMethod::PRIME_TWO_DAY, name: "FREE Prime 2-Day Shipping", price_per_item: 0
ShippingMethod.find_or_create_by identifier: ShippingMethod::PRIME_ONE_DAY, name: "$3.99 Prime Overnight Shipping", price_per_item: 3.99
ShippingMethod.find_or_create_by identifier: ShippingMethod::PRIME_NO_RUSH, name: "FREE No-Rush Shipping", price_per_item: 0

puts "====> Creating Default User"
bradley = User.find_or_initialize_by(email: "bradley.temple@gmail.com", username: "DVG")
bradley.password = 'supersecret'
bradley.password_confirmation = 'supersecret'
bradley.save