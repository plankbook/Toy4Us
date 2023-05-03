Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users

  resources :toys do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index]
end
