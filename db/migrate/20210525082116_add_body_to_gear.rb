class AddBodyToGear < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :body_part, :string
  end
end
