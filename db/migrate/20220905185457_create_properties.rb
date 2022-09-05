class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :parking_spaces, default: 0
      t.string :image
      t.references :user  
      
      t.timestamps
    end
  end
end
