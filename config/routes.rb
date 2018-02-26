Rails.application.routes.draw do
  namespace :admin do
    resources :performance_parameters
  end

  root 'application#hello'
  resources :users do
    member do
      get '_performance_parameter'
      match '/users', to: 'users#update_user_performance_parameter',via: 'get'
    end
  end

end
