Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/" => "home#top"

get "profit_loss/index" => "profit_loss#index"


resources :trade, only: [:index, :show]

resources :buy_trade, only: [:new, :show, :create, :edit, :update, :destroy]
resources :sell_trade, only: [:new, :show, :create, :edit, :update, :destroy]

end
