class UsersController < ApplicationController
	def index
		users = User.all
		render :json => { :users => users }
	end

	def create
		user = User.create!(user_params)

		name = user.first_name + " " + user.last_name
		puts name

		# split the name string

		render :json => { user_id: user.id, ascii: name }
	end

	def show
		user = User.find params[:id]
		render :json => { :user => user }
	end

	# def update
	#
	# end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name)
	end
end