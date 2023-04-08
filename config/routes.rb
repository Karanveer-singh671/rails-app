Rails.application.routes.draw do
  resources :portfolios
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # when change route file restart rails server
  # root to: means that by default it will go to pages home method
  root to: 'pages#home'

end
