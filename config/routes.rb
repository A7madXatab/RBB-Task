Rails.application.routes.draw do
  root 'home#index'
  resources :commerical_units, path: "commerical", only: %i[new create]
  resources :complex_buildings, path: "complexbuildings", only: %i[new create]
  resources :houses, only: %i[new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
