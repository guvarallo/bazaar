class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :carrier_name
      t.timestamps
    end
  end
end
