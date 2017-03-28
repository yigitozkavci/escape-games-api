class ScenarioSerializer < ActiveModel::Serializer
  attributes :id, :title, :phone, :email, :concept, :address, :latitude, :longitude
end
