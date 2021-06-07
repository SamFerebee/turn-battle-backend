class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses, :password_digest, :image, :specialty, :armored_attack, :armored_defense, :armored_health, :attack, :defense, :health, :test, :abilities, :armor, :crit_rate, :crit_dmg, :dodge_chance, :armor_penetration, :cc_immunity, :armored_crit_rate, :armored_crit_dmg, :armored_dodge_chance, :armored_armor_penetration, :armored_cc_immunity, :money, :gears
  belongs_to :specialty
  belongs_to :user
  has_many :playergears
  has_many :gears, through: :playergears
end
