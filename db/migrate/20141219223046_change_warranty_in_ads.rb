class ChangeWarrantyInAds < ActiveRecord::Migration
  def change
    change_column :ads, :warranty, :string
  end
end
