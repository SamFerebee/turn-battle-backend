class AddMorestatsToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :dodge_chance, :integer
    add_column :players, :armor_penetration, :integer
    add_column :players, :cc_immunity, :integer
  end
end
