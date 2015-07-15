# == Schema Information
#
# Table name: shipping_addresses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  addressee      :string
#  street_address :string
#  city           :string
#  state_code     :string
#  zip_code       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe ShippingAddress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
