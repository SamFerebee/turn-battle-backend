class AddMorestatsToSpecialty < ActiveRecord::Migration[6.1]
  def change
    add_column :specialties, :dodge_chance, :integer
    add_column :specialties, :armor_penetration, :integer
    add_column :specialties, :cc_immunity, :integer
  end
end
