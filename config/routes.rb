Rails.application.routes.draw do
  


  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'admin/index'

  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :lophs
  root 'home#index'
  resources :sinhviens
  

 #  controller :sessions do
 #  	get 'login' => :new
	# post 'login' => :create
	# delete 'logout' => :destroy
	# end  
  
  # post   'login',   to: 'users#create'
  # delete '/logout',  to: 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
