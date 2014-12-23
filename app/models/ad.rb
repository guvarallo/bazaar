class Ad < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  serialize :accessories

  has_attachments :photos, maximum: 4

end
