class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image
  has_one :specialty
end
