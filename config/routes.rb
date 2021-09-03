Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'prototypes#index'
  
  
  
  resources :prototypes do
   
   resources :comments, only: [:index, :create, :show, :new, :edit]
   resources :prototype
   
  end
  resources :users, only: [:index, :show]
end
