Rails.application.routes.draw do
  get 'pages/home'
  root to: 'articles#index'
  resources :articles, except: :index
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create, :show, :index]
  end
  resources :doses, only: [:destroy]
end
