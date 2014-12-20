class Brand < ActiveRecord::Base
  has_many :ads

  def display_name
    "#{brand_name}"
  end
end