class CreateSellTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :sell_trades do |t|
      t.date :day
      t.float :quantity
      t.integer :price
      t.text :memo

      t.timestamps
    end
  end
end
