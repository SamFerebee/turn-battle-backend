class GearSerializer < ActiveModel::Serializer
  attributes :id, :name, :def_value, :attk_value, :hp_value, :set_bonus, :set_name, :body_part, :price, :image, :crit_rate, :crit_dmg, :dodge_chance, :cc_immunity, :armor_penetration
end
