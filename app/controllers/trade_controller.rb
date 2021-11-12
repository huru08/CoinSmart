class TradeController < ApplicationController
 
  def index
    @buy_trade = BuyTrade.all.order(created_at: :desc)
    @sell_trade = SellTrade.all.order(created_at: :desc)

  end

  def show
  end

end
