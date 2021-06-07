class PlayergearSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :player
  has_many :gears
end
