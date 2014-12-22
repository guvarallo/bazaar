class Ad < ActiveRecord::Base
  belongs_to :brand
  belongs_to :carrier
  belongs_to :user
  serialize :accessories

  def eliminate_zeros
    new_array = []
    self.accessories.each do |number|
      new_array << number if number != 0
    end
    new_array
  end

  def accesories_names
    accesories = self.eliminate_zeros
  end
end