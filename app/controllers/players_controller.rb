class PlayersController < ApplicationController

    def test_battle
        me = Player.first
        render json: me.specialty.abilities.find_by(name:"Fire Blast")
    end


    def create
        user = User.find_by(username: params[:username])
        spec = Specialty.find_by(name: params[:specialty])
        gear = {head: "none", chest: "none", hands: "none", legs: "none", feet: "none", neck: "none", ear1: "none", ear2: "none", ring1: "none", ring2: "none"}
        player = Player.create(user: user, specialty: spec, name: params[:name], image: params[:image], wins: 0, losses: 0, attack: spec.attack, health: spec.health, defense: spec.defense, crit_rate: spec.crit_rate, crit_dmg: spec.crit_dmg, armor: gear, dodge_chance: spec.dodge_chance, armor_penetration: spec.armor_penetration, cc_immunity: spec.cc_immunity, money: 1000)
        render json: player
    end

    def change_stats
        user = User.find_by(username: params[:username])
        char = user.players.find_by(name: params[:charname])
        char.update(health: params[:health], attack: params[:attack], defense: params[:defense])
        
        if (char.specialty.name == "Wizard")
            createWizard(char)
        end
        render json: user
    end

    private

    def createWizard(player)
        gear = Gear.find_by(name: "Novice Light Helm")
        g = Playergear.create(gear: gear, player: player)
        player.armor["head"] = gear
        player.save();
        player.update(armored_health: (player.health + gear.hp_value), armored_attack: (player.attack + gear.attk_value), armored_defense: (player.defense + gear.def_value), armored_crit_rate: (player.crit_rate + gear.crit_rate), armored_crit_dmg: (player.crit_dmg + gear.crit_dmg), armored_armor_penetration: (player.armor_penetration + gear.armor_penetration), armored_dodge_chance: (player.dodge_chance + gear.dodge_chance), armored_cc_immunity: (player.cc_immunity + gear.cc_immunity))
    end

end
