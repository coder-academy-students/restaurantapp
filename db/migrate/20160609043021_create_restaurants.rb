class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :info
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
