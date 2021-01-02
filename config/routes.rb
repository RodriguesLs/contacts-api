Rails.application.routes.draw do
  resources :addresses
  resources :phones
  resources :kind_phones
  resources :contacts
  resources :kinds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
