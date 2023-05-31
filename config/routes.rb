Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :profiles, only: %i[index show new create] do
    resources :bookings, only: %i[show index new create]
  end
end
