class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
        create_table :drinks do |t|
      t.string :type
      t.string :price 
    end 
  end
end

