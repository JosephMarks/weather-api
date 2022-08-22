Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'welcome/index', to: 'welcome#index'
  post 'welcome/index', to: 'welcome#create'
  get 'welcome/new', to: 'welcome#new'
end
