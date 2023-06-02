Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  get "user_bookings", to: "bookings#user_bookings"
  delete "user_bookings/:id", to: "bookings#destroy", as: :delete_user_booking

  get "user_bookings/:id/edit", to: "bookings#edit", as: :edit_user_booking

  resources :profiles, only: %i[index show new create] do
    resources :bookings, only: %i[index new create destroy update]
  end
end

# get    'task/:id/edit', to: 'tasks#edit', as: :edit_task
# patch  'task/:id', to: 'tasks#update'
