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

Fabricator(:ad) do
  title {Faker::Lorem.words(5).join(' ')}
  description {Faker::Lorem.paragraph(2)}
  brand_id {(1..16).to_a.sample} 
  carrier_id {(1..13).to_a.sample}
  condition_id{(1..5).to_a.sample}
  user_id{(1..2).to_a.sample}
end
