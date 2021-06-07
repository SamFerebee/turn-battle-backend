class CreateSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :specialties do |t|
      t.string :name
      t.string :damage_type

      t.timestamps
    end
  end
end
