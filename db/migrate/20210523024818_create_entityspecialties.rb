class CreateEntityspecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :entityspecialties do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
