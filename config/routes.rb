Rails.application.routes.draw do
  devise_for :users
  get 'search', to: 'search#index'
  get 'contact', to: 'contact#index'
  get 'jobs', to: 'jobs#index'
  get 'about', to: 'about#index'
  get 'report', to: 'report#index'
  root :to => 'posts#index'
  resources :categories
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
