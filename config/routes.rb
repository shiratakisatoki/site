Rails.application.routes.draw do
  resources :customers
  resources :employees
  resources :order_details
  resources :line_items
  resources :carts
  resources :check_items
  resources :favorites
  get 'products/index'

  get 'products/show'

  devise_for :users
  resources :tags, except: :show
  resources :books
  resources :users
  resources :products, only: [:index, :show]
  resources :articles, only:[:index, :new, :create]
  resources :orders, only: [:index, :show, :new, :create] do
    collection do
      post :confirm
    end
  end
  
  resources :user do
    member do
      get :avatar
    end
  end
  
  resources :user do
    collection do
      get :search
    end
  end
  
  resources :articles, only:[:index, :new, :create] do
    collection do
      get :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    get '/user/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: 'mypage#index'
  get :mypage, to: 'mypage#index'
  
  root 'products#index'
end
