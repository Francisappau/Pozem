Rails.application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
 devise_for :users,:controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}

  root to: 'posts#index'

  resources :posts do
  	resources :comments do
  		resources :replies, only: [:create, :edit, :destroy]
  	end
  end
end
