class Restaurant < ApplicationRecord
  has_many :restaurant_features
  has_many :features, through: :restaurant_features
  has_many :restaurant_meals
  has_many :meals, through: :restaurant_meals

  geocoded_by :location
  after_validation :geocode
end
