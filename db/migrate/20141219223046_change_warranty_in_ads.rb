class ChangeWarrantyInAds < ActiveRecord::Migration
  def up
    change_column :ads, :warranty, :string
  end
  
  def down
    change_column :ads, :warranty, :boolean
  end
end
