Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  get "user_bookings", to: "bookings#user_bookings"
  delete "user_bookings/:id", to: "bookings#destroy", as: :delete_user_booking

  get "user_bookings", to: "bookings#edit", as: :update_user_booking

  patch "update_user_booking/:id", to: "bookings#update"

  resources :profiles, only: %i[index show new create] do
    resources :bookings, only: %i[index new create update destroy]
  end
end
