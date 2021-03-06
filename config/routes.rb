Rails.application.routes.draw do
  resources :user_stocks, only: %i[create destroy]
  resources :friendships, only: %i[create destroy]
  devise_for :users
  resources :users, only: %i[show]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#my_friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
end
