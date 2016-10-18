Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',registrations: 'users/registrations', passwords: 'users/passwords',
        omniauth: 'users/omniauth', unlocks: 'unlocks', confirmations: 'confirmations'
      }

  resources :profiles
  root "pages#index"

  
  get 'profiles/edit' => 'profiles#new', as: 'edit_my_profile'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
