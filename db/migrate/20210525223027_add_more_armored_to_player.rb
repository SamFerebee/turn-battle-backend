class AddMoreArmoredToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :armored_crit_rate, :integer
    add_column :players, :armored_crit_dmg, :integer
    add_column :players, :armored_armor_penetration, :integer
    add_column :players, :armored_dodge_chance, :integer
    add_column :players, :armored_cc_immunity, :integer
  end
end
