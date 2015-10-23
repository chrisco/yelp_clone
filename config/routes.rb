Rails.application.routes.draw do
  root to: "restaurants#index"
  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  resources :restaurants do
    resources :reviews
  end
end
