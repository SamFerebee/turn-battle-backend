class RenameMaxLevelToTotalExp < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :max_exp, :exp_total
  end
end
