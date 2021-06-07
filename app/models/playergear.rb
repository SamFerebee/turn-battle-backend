class Playergear < ApplicationRecord
  belongs_to :player
  belongs_to :gear
end
