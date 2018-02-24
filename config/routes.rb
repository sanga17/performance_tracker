Rails.application.routes.draw do
  namespace :admin do
    resources :performance_parameters
  end

  root 'application#hello'

  resources :users
end
