Fabricator(:ad) do
  title {Faker::Lorem.words(5).join(' ')}
  description {Faker::Lorem.paragraph(2)}
  brand_id {(1..16).to_a.sample} 
  carrier_id {(1..13).to_a.sample}
  condition_id{(1..5).to_a.sample}
end
