class AddCritToSpecialty < ActiveRecord::Migration[6.1]
  def change
    add_column :specialties, :crit_rate, :integer
    add_column :specialties, :crit_dmg, :integer
  end
end
