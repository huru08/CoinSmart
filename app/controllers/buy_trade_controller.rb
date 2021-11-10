class BuyTradeController < ApplicationController
   


def index
end

def show
    @btrade = BuyTrade.find_by(id:params[:id])

end



def new
    @trade = BuyTrade.new
end

def create
    @trade = BuyTrade.new(buy_trade_params)

    if @trade.save
      redirect_to controller: :trade, action: :index
    else
        render :new
    end
end

def edit
    @trade = BuyTrade.find_by(id:params[:id])
end

def update
    @trade = BuyTrade.find_by(id:params[:id])

   if @trade.update(buy_trade_params)
    redirect_to controller: :trade, action: :index
   end

end

def destroy
    trade = BuyTrade.find(params[:id])
   if trade.destroy
   redirect_to controller: :trade, action: :index
end
end


private
def buy_trade_params
    params.require(:buy_trade).permit(:day, :quantity, :price, :memo)
end


end
