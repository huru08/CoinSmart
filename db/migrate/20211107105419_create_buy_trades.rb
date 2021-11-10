class CreateBuyTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :buy_trades do |t|
      t.date :day
      t.float :quantity
      t.integer :price
      t.text :memo

      t.timestamps
    end
  end
end
