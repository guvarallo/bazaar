class Ad < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  belongs_to :carrier
  belongs_to :user

  serialize :accessories

end
