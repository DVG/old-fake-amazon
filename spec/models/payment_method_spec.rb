# == Schema Information
#
# Table name: payment_methods
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  card_number      :string
#  expiration_month :string
#  expiration_year  :string
#  security_code    :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe PaymentMethod, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
