Rails.application.routes.draw do
  devise_for :users

  resources :users do
     get 'search' , on: :collection
   end

  root to: 'items#main'
   get "/concept/page", to: "items#concept", as: "concept"
   get "/search/user/page", to: "items#search", as: "search"
   
  resources :items  do
    resources :comments
  end
  
end
