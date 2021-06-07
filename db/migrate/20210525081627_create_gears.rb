class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :def_value
      t.integer :attk_value
      t.integer :hp_value
      t.text :set_bonus
      t.string :set_name

      t.timestamps
    end
  end
end
