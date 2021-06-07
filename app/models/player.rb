class Player < ApplicationRecord
    belongs_to :specialty
    belongs_to :user
    validates :name, uniqueness: true
    has_many :playergears
    has_many :gears, through: :playergears

    def test
        "hi"
    end

    def abilities
        self.specialty.abilities
    end

end
