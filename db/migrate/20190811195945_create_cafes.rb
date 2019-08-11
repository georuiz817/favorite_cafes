class CreateCafes < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes do |t|
      t.string :name 
      t.string :location
      t.string :wifi_avaliable 
      t.integer :user_id
    end
  end
end

