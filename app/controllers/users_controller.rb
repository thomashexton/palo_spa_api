class UsersController < ApplicationController
	def index
		users = User.all
		render :json => { :users => users }
	end

	def create
		user = User.create!(user_params)
		zeroes = User.ascii_totaller(user.first_name, user.last_name)
		name = user.first_name + " " + user.last_name
		puts name

		render :json => { user_id: user.id, name_submitted: name, consecutive_zeroes: zeroes }
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