class AddInfoToGear < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :price, :integer
    add_column :gears, :image, :string
  end
end
