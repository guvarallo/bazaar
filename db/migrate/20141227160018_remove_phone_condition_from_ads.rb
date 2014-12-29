class RemovePhoneConditionFromAds < ActiveRecord::Migration
  def up
    remove_column :ads, :phone_condition
  end

  def down
    add_column :ads, :phone_condition, :string
  end
end
