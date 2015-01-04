# == Schema Information
#
# Table name: ads
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :text
#  price        :float
#  phone_name   :string(255)
#  usage        :string(255)
#  warranty     :string(255)
#  brand_id     :integer
#  carrier_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#  accessories  :text(255)
#  user_id      :integer
#  condition_id :integer
#

class Ad < ActiveRecord::Base
  belongs_to :user
  belongs_to :brand
  belongs_to :carrier
  belongs_to :condition
  serialize  :accessories
  has_many   :pictures, :inverse_of => :ad, :dependent => :destroy
  accepts_nested_attributes_for :pictures

  searchable do
   text :title, :boost => 4
   text :phone_name, :boost => 2
   text :description
   integer :brand_id
   integer :carrier_id
   integer :condition_id
  end
end
