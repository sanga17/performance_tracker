Rails.application.routes.draw do

  namespace :admin do
    resources :performance_parameters
  end

  root 'users#index'
  resources :users do
    member do
      get 'user_performance_parameter'
      match '/users', to: 'users#update_user_performance_parameter',via: 'get'
      get 'user_task'
    end
  end

end
