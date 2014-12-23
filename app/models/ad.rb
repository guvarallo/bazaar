class Ad < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  serialize :accessories

end
