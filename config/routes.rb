Rails.application.routes.draw do


  
  namespace :admin do
    get 'user_address/edit'
  end
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  devise_for :end_users, controllers: {

  sessions:      'end_users/sessions',
  passwords:     'end_users/passwords',
  registrations: 'end_users/registrations'

}

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
	resources :user_address,only: [:edit,:update]
end
# resources :admin_sessions,only: [:destroy, :new, :create]
namespace :end_user do
<<<<<<< HEAD
	resources :users,only: [:index, :show, :edit, :update, :finish, :destroy, :new, :create] do
		resources :carts,only: [:index,:destroy, :create]
	end
=======
	resources :users,only: [ :edit, :update, :finish, :destroy, :new,:create,:check]
     get '/users/:id' => 'users#check', as: 'check'
>>>>>>> develop

	resources :products,only: [:search, :show, :index] do
		get '/search' => 'products#search', as: 'search'
	end
	resources :orders,only: [:index, :show,]
<<<<<<< HEAD
	resources :cheacks,only: [:show, :new, :create]
	resources :addresses,only: [:new, :create]
=======
	resources :carts,only: [:index,:destroy, :create]
	resources :checks,only: [:index, :new, :create,:show]
	resources :addresses,only: [:new, :create,:edit, :update]
    resources :pays,only: [:new, :create,:show ]
    resources :cart_addresses,only: [:new, :create,:show ]
   get '/users/:id/cart_addresses' => 'cart_addresses#show', as: 'show'
>>>>>>> develop
end
scope module: :end_user do
   get 'mypage', to: "users#show"
end

# resources :end_user_sessions,only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
