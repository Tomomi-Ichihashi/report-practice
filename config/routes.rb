Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  #registrations: 'admins/registrations'
}

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  #registrations: 'users/registrations'
}

  scope module: :users do
    resources :clients, except: [:destroy]
    #get 'clients/new'
    #get 'clients/index'
    #get 'clients/show'
    #get 'clients/edit'
  end
  
  scope module: :users do
    resources :users, except: [:destroy, :new, :create]
    #get 'users/index'
    #get 'users/show'
    #get 'users/edit'
  end
  
  namespace :admins do
    resources :users, except: [:destroy]
    #get 'users/new'
    #get 'users/index'
    #get 'users/show'
    #get 'users/edit'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
