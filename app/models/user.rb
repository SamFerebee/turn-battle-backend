class User < ApplicationRecord
    has_secure_password
    has_many :players
    validates :username, uniqueness: true
end
