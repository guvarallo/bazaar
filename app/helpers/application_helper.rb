module ApplicationHelper

  # These methods convert the accessories data into 
  def eliminate_zeros(accessories)
    new_array = []
    accessories.each do |number|
      new_array << number if number != '0'
    end
    new_array
  end

  def accessories_names(ad)
    accessories_no_zeros = eliminate_zeros(ad.accessories)
    accessories = []

    if accessories_no_zeros.any?
      accessories_no_zeros.each do |accessory|
        case accessory
        when '1'
          accessories << 'Original receipt'
        when '2'
          accessories << 'Original box'
        when '3'
          accessories << 'Manual'
        when '4'
          accessories << 'Wall Charger'
        when '5'
          accessories << 'Headphones'
        when '6'
          accessories << 'Cable'
        when '7'
          accessories << 'Car Charger'
        when '8'
          accessories << 'Dock'
        when '9'
          accessories << 'Case'
        when '10'
          accessories << 'Screen protector'
        when '11'
          accessories << 'Extra battery'
        else
          accessories << 'Memory card'
        end                      
      end
    end
    accessories
  end
end
