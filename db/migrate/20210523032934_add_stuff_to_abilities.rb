class AddStuffToAbilities < ActiveRecord::Migration[6.1]
  def change
    add_column :abilities, :image, :string
    add_column :abilities, :cooldown, :integer
  end
end
