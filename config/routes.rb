Rails.application.routes.draw do

  devise_for :admins
  devise_for :end_users
get 'end_user/finish' => 'end_user/users#finish', as: 'end_user_finish'

namespace :admin do
	resources :products,only: [:index, :show, :edit, :update, :new, :create]
	resources :users,only: [:index, :show, :edit, :update, :destroy] do
		get '/orderhistories' => 'users#orderhistories',as: 'orderhistories'
	end
	resources :arrivals,only: [:index, :new, :create]
	resources :orders,only: [:index, :show,]
	resources :orderhistories,only: [:index,]
	resources :tops,only: [:index,]
end
# resources :admin_sessions,only: [:destroy, :new, :create]
namespace :end_user do
	resources :users,only: [:index, :show, :edit, :update, :finish, :destroy, :new, :create]

	resources :products,only: [:search, :show, :index] do
		get '/search' => 'products#search', as: 'search'
	end
	resources :orders,only: [:index, :show,]
	resources :carts,only: [:index,:destroy, :create]
	resources :cheecks,only: [:index, :new, :create]
end
# resources :end_user_sessions,only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
