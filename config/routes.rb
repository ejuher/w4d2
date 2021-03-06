NinetyNineCats::Application.routes.draw do
  resources :cats do
    member do
      get 'request_rental'
    end
  end
  
  resources :cat_rental_requests do
    member do
      get 'approve'
      get 'deny'
    end
  end
  
  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy, :index]
  
end
