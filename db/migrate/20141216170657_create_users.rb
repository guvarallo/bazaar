class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :email, :phone_number, :password_digest
      t.string :city, :province
      t.timestamps
    end
  end
end
