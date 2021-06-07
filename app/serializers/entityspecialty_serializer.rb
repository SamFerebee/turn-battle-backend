class EntityspecialtySerializer < ActiveModel::Serializer
  attributes :id, :player, :specialty
  belongs_to :player
  belongs_to :specialty
end
