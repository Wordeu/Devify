Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :users do
    #if we do "top rated etc" in here somewhere with collection get or something like that???
    # resources :bookings
    resources :bookings, only: %i[show index]
  end
  resources :profiles, only: %i[index show new create]
end
