class SellTradeController < ApplicationController

    def index
    end
    
    def show
        @strade = SellTrade.find_by(id:params[:id])

    end
    
    
    
    def new
        @trade = SellTrade.new
    end
    
    def create
        @trade = SellTrade.new(sell_trade_params)
    
        if @trade.save
          redirect_to controller: :trade, action: :index
        else
            render :new
        end
    end
    
    def edit
        @trade = SellTrade.find_by(id:params[:id])
    end
    
    def update
        @trade = SellTrade.find_by(id:params[:id])
    
       if @trade.update(sell_trade_params)
        redirect_to controller: :trade, action: :index
       end
    
    end
    
    def destroy
        trade = SellTrade.find(params[:id])
       if trade.destroy
       redirect_to controller: :trade, action: :index
    end
    end
    
    
    private
    def sell_trade_params
        params.require(:sell_trade).permit(:day, :quantity, :price, :memo)
    end
    
    
    end
    