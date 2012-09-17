App01::Application.routes.draw do

  resources :suppliers do
    resources :products
  end

  match 'user/edit' => 'users#edit', :as => :edit_current_user

  match 'signup' => 'users#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login

  resources :sessions

  resources :users

  resources :orders, :except => [:edit] do
    collection do
      get 'today'
    end
  end

  root :to => 'orders#new'

end
