class ProfitLossController < ApplicationController
  def index
    @btrade = BuyTrade.all
    @strade = SellTrade.all
   @hoyu = @btrade.sum(:quantity)-@strade.sum(:quantity)
    @average = @btrade.sum(:price)/@btrade.sum(:quantity) 
    @gen = @average*@strade.sum(:quantity)
    @soneki = @strade.sum(:price)-@gen
  end
end
