Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  # namespace :admin do
  #   resources :restaurants, only: [:index]
  # end
end
