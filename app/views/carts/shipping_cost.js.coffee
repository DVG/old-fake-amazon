$("#order_summary").html("<%= j render('order_summary', cart: @cart, shipping_method: @shipping_method) %>")