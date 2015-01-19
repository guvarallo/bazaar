# == Schema Information
#
# Table name: conditions
#
#  id               :integer          not null, primary key
#  condition_status :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Condition < ActiveRecord::Base
  has_many :ads
end
