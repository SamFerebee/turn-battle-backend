class AddArmoredToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :armored_health, :integer
    add_column :players, :armored_attack, :integer
    add_column :players, :armored_defense, :integer
  end
end
