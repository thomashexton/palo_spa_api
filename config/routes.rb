Rails.application.routes.draw do
	# resources :users

	root :to => "users#index"

	get "/users/:id" => "users#show"
	post "/users/:id" => "users#update"

	get "/users" => "users#index"
	post "/users" => "users#create"
end
