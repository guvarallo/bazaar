class Ad < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  belongs_to :carrier
  belongs_to :user

  serialize :accessories

  has_attachments :photos, maximum: 4

  searchable do
    text :title, :phone_name
  end

end
