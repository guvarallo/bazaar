class AddNameNumberCityProvinceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
  end
end
