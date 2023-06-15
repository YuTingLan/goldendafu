Rails.application.routes.draw do
  root 'products#index'

  devise_for :users,
             controllers: 
             {
              registrations: 'users/registrations',
              sessions: 'users/sessions',
              # omniauth_callbacks: 'users/omniauth_callbacks',
              passwords: 'users/passwords'
             }

  resources :products do
    resources :comments, shallow: true, only: [:create, :update, :edit, :destroy]
  end
end
