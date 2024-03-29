module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type.to_sym)} fade in") do
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message
            end)
      end
      nil
    end

    def cart_items
      current_user.try(:cart).try(:total_items)
    end

    def please_with_with_spinner
      content_tag :i, class: "fa fa-spinner fa-spin"
    end

    def shipping_cost_label(cost)
      if cost == 0
        "FREE"
      else
        number_to_currency cost
      end
    end
end
