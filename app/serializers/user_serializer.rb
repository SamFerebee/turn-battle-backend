class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :image
  has_many :players
end
