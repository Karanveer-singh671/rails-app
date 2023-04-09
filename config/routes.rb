Rails.application.routes.draw do
  resources :portfolios
  # now we can use in view using about_path with the as: alias
  get 'about-me', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # when change route file restart rails server
  # root to: means that by default it will go to pages home method when / route is hit
  root to: 'pages#home'

end
