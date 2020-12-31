Rails.application.routes.draw do
  devise_for :users　
    post '/users/guest_sign_in', to: 'users#new_guest'

  resources :users do
     get 'search' , on: :collection
   end

  root to: 'items#main'
   get "/concept/page", to: "items#concept", as: "concept"
   get "/search/user/page", to: "items#search", as: "search"
   get "/buy/list", to: "items#buy_list", as: "list"
   
  resources :items  do
    resources :comments
  end
  
end
