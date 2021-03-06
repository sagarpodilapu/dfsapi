Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	scope module: :v1, constraints: ApiVersion.new('v1', true) do
    	resources :service_providers do
    		resources :services
    		resources :addresses
    	end
  	end

	post 'auth/login', to: 'authentication#authenticate'
	post 'signup', to: 'users#create'
	post 'mail', to: 'mailer#create'
end
