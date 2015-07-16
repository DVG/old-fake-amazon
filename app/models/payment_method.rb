# == Schema Information
#
# Table name: payment_methods
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  name_on_card  :string
#  card_number   :string
#  expiration    :string
#  security_code :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PaymentMethod < ActiveRecord::Base

  def masked_card_number
    number = self.card_number.match /(?<last_four>\d{4}$)/
    "**** **** #{number[:last_four]}"
  end
end
