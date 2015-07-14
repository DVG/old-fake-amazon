include ActionView::Helpers

def upload_image(image_name, product: nil)
  product.product_images.find_or_create_by(image: File.open("db/seeds/images/#{image_name}"))
end

video_games = Category.find_or_create_by name: "Video Games"

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

bradley = User.find_or_initialize_by(email: "bradley.temple@gmail.com", username: "DVG")
bradley.password = 'supersecret'
bradley.password_confirmation = 'supersecret'
bradley.save