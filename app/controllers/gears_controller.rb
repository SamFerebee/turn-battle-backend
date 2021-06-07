class GearsController < ApplicationController

    def gear_store
        render json: Gear.all
    end

    def buy_gear
        user=User.find_by(username: params[:user])
        player = user.players.find_by(name: params[:player])
        gear = Gear.find_by(name: params[:gear])
        Playergear.create(gear: gear, player: player)
        player.update(money: player.money - gear.price)
        render json: user
    end

end
