class Ad < ActiveRecord::Base
  belongs_to :brand
  serialize :accessories
end