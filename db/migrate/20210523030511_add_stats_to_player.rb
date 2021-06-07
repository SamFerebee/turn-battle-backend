class AddStatsToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :buffed_attack, :integer
    add_column :players, :buffed_health, :integer
    add_column :players, :buffed_defense, :integer
  end
end
