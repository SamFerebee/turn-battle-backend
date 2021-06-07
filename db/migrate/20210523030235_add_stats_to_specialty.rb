class AddStatsToSpecialty < ActiveRecord::Migration[6.1]
  def change
    add_column :specialties, :health, :integer
    add_column :specialties, :attack, :integer
    add_column :specialties, :defense, :integer
  end
end
