Rails.application.routes.draw do
  devise_for :users
  resources :contributions
  resources :benefactors
  root :to => 'contributions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
