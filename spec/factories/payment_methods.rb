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

FactoryGirl.define do
  factory :payment_method do
    
  end

end
