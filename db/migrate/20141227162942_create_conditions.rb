class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :condition_status
      t.timestamps
    end
  end
end
