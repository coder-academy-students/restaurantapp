class CreateRestaurantMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_meals do |t|
      t.references :restaurant, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
