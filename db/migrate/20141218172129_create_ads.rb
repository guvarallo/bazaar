class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :phone_name
      t.string :usage
      t.boolean :warranty
      t.string :phone_condition
      t.integer :brand_id
      t.integer :carrier_id
      t.timestamps
    end
  end
end
