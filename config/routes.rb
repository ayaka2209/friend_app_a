Rails.application.routes.draw do
  # get 'pictures/index'
  get '/pictures', to: 'pictures#index'
end
