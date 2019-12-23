Rails.application.routes.draw do
  devise_for :users, controllers:{sessions: 'users/sessions'}
  root 'courses#index', as: 'course_index'
  resources :departments
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
