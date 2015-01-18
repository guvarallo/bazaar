# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  brand_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Brand < ActiveRecord::Base
  has_many :ads

  def display_name
    "#{brand_name}"
  end
end
