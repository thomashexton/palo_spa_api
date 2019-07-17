# == Route Map
#
# Prefix Verb URI Pattern          Controller#Action
#   root GET  /                    users#index
#        GET  /users/:id(.:format) users#show
#        POST /users/:id(.:format) users#update
#  users GET  /users(.:format)     users#index
#        POST /users(.:format)     users#create

Rails.application.routes.draw do

	root :to => "users#index"

	get "/users/:id" => "users#show"
	post "/users/:id" => "users#update"

	get "/users" => "users#index"
	post "/users" => "users#create"
	
end
