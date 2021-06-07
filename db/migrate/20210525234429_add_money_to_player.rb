class AddMoneyToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :money, :integer
  end
end
