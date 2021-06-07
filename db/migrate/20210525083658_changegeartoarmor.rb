class Changegeartoarmor < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :gear, :armor
  end
end
