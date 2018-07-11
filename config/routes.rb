Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
