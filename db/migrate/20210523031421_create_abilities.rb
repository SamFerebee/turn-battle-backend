class CreateAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.belongs_to :specialty, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
