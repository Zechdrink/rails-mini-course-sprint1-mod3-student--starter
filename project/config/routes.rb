Rails.application.routes.draw do
  resources :tasks, except: [:destroy]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
