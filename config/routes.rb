Rails.application.routes.draw do
  root 'flights#index'

  resources :flights
  resources :airports
  resources :bookings
end
