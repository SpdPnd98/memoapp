Rails.application.routes.draw do
  get 'memoboards/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "memoboards#index"

  resources :memoboards
end
