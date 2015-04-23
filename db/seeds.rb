include ActionView::Helpers

ps4 = Product.find_or_create_by(name: "Playstation 4", list_price: 399.99, price: 349.99)
ps4.product_images.find_or_create_by(image_url: asset_path("ps4_001.jpg"))
ps4.product_images.find_or_create_by(image_url: asset_path("ps4_002.jpg"))
ps4.product_images.find_or_create_by(image_url: asset_path("ps4_003.jpg"))
vita = Product.find_or_create_by(name: "Playstation Vita", list_price: 199.99, price: 169.99)
vita.product_images.find_or_create_by(image_url: asset_path("psvita_001.jpg"))
vita.product_images.find_or_create_by(image_url: asset_path("psvita_001.jpg"))
vita.product_images.find_or_create_by(image_url: asset_path("psvita_001.jpg"))

bradley = User.find_or_initialize_by(email: "bradley.temple@gmail.com")
bradley.password = 'supersecret'
bradley.password_confirmation = 'supersecret'
bradley.save
