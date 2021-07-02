class AddLevelToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :level, :integer
    add_column :players, :max_exp, :integer
  end
end
