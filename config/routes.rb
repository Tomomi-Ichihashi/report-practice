Rails.application.routes.draw do

    root to: 'users/homes#top'
  
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
    resources :clients, except: [:destroy] do
      resources :comments, only: [:create, :destroy]
    end
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
    resources :reports do
    # get 'reports/index'
    # get 'reports/new'
    # get 'reports/show'
    # get 'reports/edit'
    resource :confirmations, only: [:create, :destroy]
    #get 'confirmations/create'
    #get 'confirmations/destroy'
  end
    resources :events, only: [:create, :update, :destroy]
  end
  
  namespace :admins do
    resources :users, except: [:destroy]
    #get 'users/new'
    #get 'users/index'
    #get 'users/show'
    #get 'users/edit'
  
    resources :departments, except: [:new, :show,:destroy]
    # get 'departments/index'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
