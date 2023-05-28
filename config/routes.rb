Rails.application.routes.draw do
  resources :kittens
  
  namespace :api, defaults: { format: 'json' } do
    resources :kittens
  end

  root "kittens#index"
end
