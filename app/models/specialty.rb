class Specialty < ApplicationRecord
    has_many :abilities

    def test
        return "it worked"
    end

end
