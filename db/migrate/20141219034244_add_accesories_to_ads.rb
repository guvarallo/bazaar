class AddAccesoriesToAds < ActiveRecord::Migration
  def change
    add_column :ads, :accessories, :string
  end
end
