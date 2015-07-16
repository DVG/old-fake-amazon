$ ->
  $('input.js-card-number').payment('formatCardNumber')
  $('input.js-expiration').payment('formatCardExpiry')
  $('input.js-cvc').payment('formatCardCVC')

  $('input:radio[name="order[shipping_method_id]"]').on "change", ->
    $('#order_summary').html('<i class="fa fa-spinner fa-spin"></i>')
    $.ajax '/carts/shipping_cost',
      data:
        id: $(@).data('id')
      dataType: 'script'

  $("#create_order_button").on "click", ->
    $("form#new_order").submit()
    false