Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  devise_for :users
  resources :events
  get "/pick_event", to: "events#pick_event", as: :pick_event
  resources :guides
  resources :bookings
end
