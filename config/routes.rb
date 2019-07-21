# == Route Map
#
# Prefix Verb URI Pattern          Controller#Action
#   root GET  /                    users#index
#        GET  /users/:id(.:format) users#show
#        POST /users/:id(.:format) users#update
#  users GET  /users(.:format)     users#index
#        POST /users(.:format)     users#create

Rails.application.routes.draw do

	get '/' => "users#index"

	get "/users/:id" => "users#show"
	delete "/users/:id" => "users#destroy"

	get "/users" => "users#index"
	post "/users" => "users#create"



end
