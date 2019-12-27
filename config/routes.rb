Rails.application.routes.draw do
  get 'store/index'
  get 'homepage/welcome'
  #get 'carts#create' as: 'create_carts'
  root 'homepage#welcome', as: 'home_page'
  devise_for :users, controllers:{sessions: 'users/sessions', :registrations => "users/registrations"}

  scope :students do
    resources :users
  end

  resources :departments
  resources :courses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
