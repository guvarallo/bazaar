class RemovePicturesFromAds < ActiveRecord::Migration
  def change
    remove_column :ads, :pictures
  end
end
