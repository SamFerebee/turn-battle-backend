class ChangePlayerStuff < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :buffed_health, :health
    rename_column :players, :buffed_attack, :attack
    rename_column :players, :buffed_defense, :defense
  end
end
