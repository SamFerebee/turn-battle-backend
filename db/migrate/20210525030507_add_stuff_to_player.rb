class AddStuffToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :crit_rate, :integer
    add_column :players, :crit_dmg, :integer
    add_column :players, :gear, :jsonb
  end
end
