Rails.application.routes.draw do
  root to: 'items#main'

  devise_for :users
    post '/users/guest_sign_in', to: 'users#new_guest'

  resources :users do
     get 'search' , on: :collection
   end

   get "/concept/page", to: "items#concept", as: "concept"
   get "/search/user/page", to: "items#search", as: "search"
  #  get "/buylist", to: "items#lists", as: "lists"
   
  resources :items  do
    resources :comments
  end
  
end
