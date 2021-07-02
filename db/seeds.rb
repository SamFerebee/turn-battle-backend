#####CLASSES AND ABILITIES

####WIZARD
wizard = Specialty.create(name: "Wizard", damage_type: "Elemental", health: 850, attack: 100, defense: 20, cc_immunity: 10, armor_penetration: 0, dodge_chance: 10, crit_rate: 10, crit_dmg: 150)
fireblast = Ability.create(name: "Fire Blast", description: "Tons of damage", cooldown: 2, specialty: wizard, image: "https://i.pinimg.com/600x315/6e/03/b7/6e03b744dbd6811eb921295df9f4ce1e.jpg")
hailstorm = Ability.create(name: "Hail Storm", description: "Cold damage", cooldown: 3, specialty: wizard)
barrier = Ability.create(name: "Barrier", description: "A shield", cooldown: 4, specialty: wizard)
freeze = Ability.create(name: "Freeze", description: "Freeze target", cooldown: 4, specialty: wizard)
earthquake = Ability.create(name: "Earthquake", description: "Create a tremor in the ground the deal damage the next turn", cooldown: 4, specialty: wizard)

####BERSERKER
zerk = Specialty.create(name: "Berserker", damage_type: "Physical", health: 1000, attack: 85, defense: 30, cc_immunity: 15, armor_penetration: 0, dodge_chance: 10, crit_dmg: 150);

####GEAR
Gear.create(name:"Novice Light Helm", def_value: 2, attk_value: 3, hp_value: 20, armor_penetration: 0, dodge_chance: 0, cc_immunity: 0, crit_dmg: 0, crit_rate:0, set_name:"Novice Wizard Gear", set_bonus: "10% Armor Penetration", body_part: "head", price: 0, image:"https://www.pinclipart.com/picdir/middle/551-5512468_witch-hat-halloween-pointed-hat-transparent-witch-hat.png")
Gear.create(name:"Intermediate Light Helm", def_value: 5, attk_value: 12, hp_value: 50, armor_penetration: 0, dodge_chance: 0, cc_immunity: 0, crit_dmg: 0, crit_rate:0, set_name:"Intermediate Wizard Gear", set_bonus: "20% Armor Penetration", body_part: "head", price: 500, image: "https://toppng.com/uploads/preview/magic-wizards-hat-wizard-hat-11563017394wlogbsgpm5.png")
Gear.create(name:"Advanced Light Helm", def_value: 8, attk_value: 24, hp_value: 100, armor_penetration: 0, dodge_chance: 0, cc_immunity: 0, crit_dmg: 0, crit_rate:10, set_name:"Advanced Wizard Gear", set_bonus: "30% Armor Penetration", body_part: "head", price: 1200, image: "https://www.pinclipart.com/picdir/middle/22-221248_wizard-clipart-cap-transparent-wizard-hat-png.png")
