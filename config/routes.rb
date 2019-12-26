Rails.application.routes.draw do
  get 'homepage/welcome'
  root 'homepage#welcome', as: 'home_page'
  devise_for :users, controllers:{sessions: 'users/sessions', :registrations => "users/registrations"}

  scope :students do
    resources :users
  end

  resources :departments
  resources :courses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
