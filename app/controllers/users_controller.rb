class UsersController < ApplicationController
	def index
		users = User.order('id DESC')

		render :json => { :users => users }
	end

	def create
		puts "\n*****\nParameters Sent to Server\n__________\n#{params}\n*****\n"

		user = User.new(user_params)
		consecutive_zeroes = User.ascii_totaller(user.first_name, user.last_name)
		user.consecutive_zeroes = consecutive_zeroes
		user.save

		name = user.first_name + " " + user.last_name
		render :json => { user_id: user.id, name_submitted: name, consecutive_zeroes: consecutive_zeroes }
	end

	def show
		user = User.find params[:id]
		render :json => { :user => user }
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name)
	end
end