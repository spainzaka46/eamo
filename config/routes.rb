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

root to: 'end_user/products#index', as: 'end_user_products'
get 'end_user/finish' => 'end_user/users#finish', as: 'end_user_finish'

namespace :admin do
  get '/products/result' => 'products#result', as: 'result'
  resources :products
  resources :artists
  resources :labels
  resources :users,only: [:index, :show, :edit, :update, :destroy] do
    get '/orderhistories' => 'orderhistories#index',as: 'orderhistories'
  end
  resources :arrivals,only: [:index, :new, :create]
  resources :orders,only: [:index, :show, :update]
  resources :orderhistories,only: [:index]
  resources :tops,only: [:index,]
  resources :user_address,only: [:edit,:update]
  get '/disks', to: 'disks#index'
end
# resources :admin_sessions,only: [:destroy, :new, :create]
namespace :end_user do
  resources :users,only: [:index, :show, :edit, :update, :destroy, :new, :create]
    get '/orders' => 'orders#index', as: 'orders'
    get '/orders/:id' => 'orders#show', as: 'order'
    get '/checks' => 'users#check', as: 'check'
    resources :cheecks, only: [:new, :create,:index]
    get '/confirm' => 'cheecks#confirm', as: 'comfirm'

  get '/products/result' => 'products#result', as: 'result'
  resources :products,only: [:index, :create, :show] do
    resources :carts,only: [:destroy, :create]
  end
  get '/products/genre/:id' => 'products#genre_serch', as: 'genre'
  resources :carts,only: [:index]
  resources :orders,only: [:index, :show,]
  resources :checks,only: [:index, :new, :create,:show]
  resources :addresses,only: [:new, :create,:edit, :update]
  resources :pays,only: [:new, :create,:show ]
  resources :cart_addresses,only: [:new, :create,:show ]
  get '/users/:id/cart_addresses' => 'cart_addresses#show', as: 'show'

end
scope module: :end_user do
   get 'mypage', to: "users#show"
end

# resources :end_user_sessions,only: [:new, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end