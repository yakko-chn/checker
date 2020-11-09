Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
   get "/concept/page", to: "items#concept", as: "concept"
   get "/search/user/page", to: "items#search", as: "search"
   
  resources :items
end
