class CreateCafeDrinks < ActiveRecord::Migration
  def change
    create_table :cafe_drinks do |t|
      t.integer :drinks_id
      t.integer :cafe_id 
    end 
  end
end