Rails.application.routes.draw do
  get "/" => "home#top"
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  Rails.application.routes.draw do
    devise_for :users
    devise_scope :user do#トップページをログイン画面に
      root "users/sessions#new"
    end
  end




get "profit_loss/index" => "profit_loss#index"


resources :trade, only: [:index, :show]

resources :buy_trade, only: [:new, :show, :create, :edit, :update, :destroy]
resources :sell_trade, only: [:new, :show, :create, :edit, :update, :destroy]

end
