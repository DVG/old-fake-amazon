include ActionView::Helpers

video_games = Category.find_or_create_by name: "Video Games"

ps4 = Product.find_or_create_by(name: "Playstation 4", list_price: 399.99, price: 349.99, category: video_games)
ps4.product_images.find_or_create_by(image_url: "ps4_001.jpg")
ps4.product_images.find_or_create_by(image_url: "ps4_002.jpg")
ps4.product_images.find_or_create_by(image_url: "ps4_003.jpg")
vita = Product.find_or_create_by(name: "Playstation Vita", list_price: 199.99, price: 169.99, category: video_games)
vita.product_images.find_or_create_by(image_url: "psvita_001.jpg")
vita.product_images.find_or_create_by(image_url: "psvita_002.jpg")
vita.product_images.find_or_create_by(image_url: "psvita_003.jpg")

disgaea = Product.find_or_create_by name: "Disgaea 3: Absence of Detention", list_price: 29.99, price: 29.99, category: video_games
disgaea.product_images.find_or_create_by image_url: "disgaea_3_001.jpg"

bradley = User.find_or_initialize_by(email: "bradley.temple@gmail.com", username: "DVG")
bradley.password = 'supersecret'
bradley.password_confirmation = 'supersecret'
bradley.save
