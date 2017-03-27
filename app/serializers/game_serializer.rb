class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :url, :scenarios
  has_many :scenarios
end
