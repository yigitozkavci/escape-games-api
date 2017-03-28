class Scenario < ActiveRecord::Base
  belongs_to :game
  geocoded_by :address
  after_validation :geocode
end
