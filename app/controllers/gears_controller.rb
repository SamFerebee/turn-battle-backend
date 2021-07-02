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

    def swap_gear
        user = User.find_by(username: params[:username])
        player = user.players.find_by(name: params[:charname])
        gear = Gear.find_by(name: params[:newGear])
        part = gear.body_part
        player.armor[part] = gear
        player.save();
        player.update(armored_health: (player.health + gear.hp_value), armored_attack: (player.attack + gear.attk_value), armored_defense: (player.defense + gear.def_value), armored_crit_rate: (player.crit_rate + gear.crit_rate), armored_crit_dmg: (player.crit_dmg + gear.crit_dmg), armored_armor_penetration: (player.armor_penetration + gear.armor_penetration), armored_dodge_chance: (player.dodge_chance + gear.dodge_chance), armored_cc_immunity: (player.cc_immunity + gear.cc_immunity))
        render json: player
    end

end
