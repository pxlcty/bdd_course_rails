Rails.application.routes.draw do
  
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "articles#index"
  resources :articles
    
end
