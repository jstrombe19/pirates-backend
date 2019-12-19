Rails.application.routes.draw do
  resources :ships, only: [:show]
  resources :buckaneers, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
