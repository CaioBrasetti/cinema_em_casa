Rails.application.routes.draw do
  resources :atuacaos
  get 'welcome/index'
  
  resources :ators  
  resources :filmes
  

  root to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
