class AddStatsToGear < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :cc_immunity, :integer
    add_column :gears, :crit_rate, :integer
    add_column :gears, :crit_dmg, :integer
    add_column :gears, :dodge_chance, :integer
    add_column :gears, :armor_penetration, :integer
  end
end
