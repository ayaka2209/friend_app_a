Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures do
    collection do
      post :confirm
    end
    # get '/pictures', to: 'pictures#new'
  end
end
