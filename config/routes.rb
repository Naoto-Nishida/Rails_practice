Rails.application.routes.draw do
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #具体的なルーティングの文法は、次のような形式になります。 : root 'controller_name#action_name'
  root 'static_pages#home'
end
