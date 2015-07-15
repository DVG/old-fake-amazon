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

class ShippingAddress < ActiveRecord::Base
  STATE_CODES = %w{AL AK AS AZ AR CA CO CT DE DC FL GA GU HI ID IL IN IA KS KY LA ME MD MH MA MI FM 
    MN MS MO MT NE NV NH NJ NM NY NC ND MP OH OK OR PW PA PR RI SC SD TN TX UT VT VA VI WA WV WI WY}

  belongs_to :user

end
