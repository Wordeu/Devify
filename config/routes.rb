Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  get "user_bookings", to: "bookings#user_bookings"

  resources :profiles, only: %i[index show new create] do
    resources :bookings, only: %i[show index new create]
  end
end
