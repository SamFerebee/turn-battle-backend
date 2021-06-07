class SpecialtiesController < ApplicationController
    def test
        r = Player.first;
        render json: r;
    end

    def index
        render json: Specialty.all
    end

end
