Rails.application.routes.draw do
=======
  devise_for :users
  root to: "pages#home"
>>>>>>> d63c7fc80201042d6a7a199207f4610153ed5a07
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
