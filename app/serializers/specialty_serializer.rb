class SpecialtySerializer < ActiveModel::Serializer
  attributes :id, :name, :damage_type, :test, :attack, :health, :defense, :abilities, :cc_immunity, :dodge_chance, :armor_penetration, :crit_rate, :crit_dmg
  has_many :abilities
end
