Rails.application.routes.draw do
 

 
  resources :products
  resources :employes
  resources :customers
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'categories/index', to: 'categories#ibdex'
  get 'categories/data', to: 'categories#data'
  post 'categories/upload', to: 'categories#upload'
  post 'categories/destroy', to: 'categories#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
