class AddConditionIdToAds < ActiveRecord::Migration
  def change
    add_column :ads, :condition_id, :integer
  end
end
