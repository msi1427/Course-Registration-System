Rails.application.routes.draw do
  get 'res/index'
  get 'res/first'
  get 'res/second'
  get 'res/third'
  get 'res/fourth'
  get 'res/fifth'
  get 'res/sixth'
  get 'res/seventh'
  get 'res/eighth'
  resources :results
  resources :gradings
  resources :line_items
  resources :carts
  get 'registered/index'
  get 'carts/destroy'
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
