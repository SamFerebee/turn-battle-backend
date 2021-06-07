class AddSpecialtyToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_reference :players, :specialty, null: false, foreign_key: true
  end
end
