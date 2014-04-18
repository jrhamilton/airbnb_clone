Airbnb::Application.routes.draw do
  root to: "rooms#index"
  devise_for :users do
    resources :reservations
    resources :rooms do
      resources :pictures
      resources :reviews
    end
  end

  # resources :users do
  #   resources :reservations
  # end

  resources :rooms do
    resources :pictures
    resources :reviews
    resources :reservations
  end

  resources :reservations, only: [:create]

end
