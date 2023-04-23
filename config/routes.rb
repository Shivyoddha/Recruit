Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
 get 'home/index'
 # root 'home#index'
 devise_scope :user do
  root to: "devise/sessions#new"
end
devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end