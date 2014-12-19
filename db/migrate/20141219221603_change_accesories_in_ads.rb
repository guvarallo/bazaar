class ChangeAccesoriesInAds < ActiveRecord::Migration
  def change
    change_column :ads, :accessories, :text
  end
end
