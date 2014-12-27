class Ad < ActiveRecord::Base

  belongs_to :user
  belongs_to :brand
  belongs_to :carrier
  belongs_to :condition
  serialize :accessories

  has_attachments :photos, maximum: 4

  searchable do
   text :title, :boost => 4
   text :phone_name, :boost => 2
   text :description
   integer :brand_id
   integer :carrier_id
  end

end
