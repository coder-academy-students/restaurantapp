class Feature < ApplicationRecord
  has_many :restaurant_features
  has_many :restaurants, through: :restaurant_features
end
