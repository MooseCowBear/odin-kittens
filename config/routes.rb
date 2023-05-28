Rails.application.routes.draw do
  resources :kittens
  
  namespace :api, defaults: { format: 'json' } do
    resources :kittens
  end

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all 
  match "/422", to: "errors#unprocessable_content", via: :all 

  root "kittens#index"
end
