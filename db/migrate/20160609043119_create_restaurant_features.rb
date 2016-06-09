class CreateRestaurantFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_features do |t|
      t.references :restaurant, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
