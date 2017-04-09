Rails.application.routes.draw do
  get 'welcome/index'
  get 'shop/index', to: 'shop#index'

  resources :products
  resources :customers
  resources :orders
  resources :cart

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
