Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
    # get '/pictures', to: 'pictures#new'
  end
end
