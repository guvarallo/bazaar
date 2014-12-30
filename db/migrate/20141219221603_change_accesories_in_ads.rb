class ChangeAccesoriesInAds < ActiveRecord::Migration
  def up
    change_column :ads, :accessories, :text
  end

  def down
    change_column :ads, :accessories, :string
  end
end
