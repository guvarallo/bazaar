# == Schema Information
#
# Table name: carriers
#
#  id           :integer          not null, primary key
#  carrier_name :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Carrier < ActiveRecord::Base
  has_many :ads  
end
