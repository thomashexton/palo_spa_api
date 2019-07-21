class UsersController < ApplicationController
	def index
		# gather all users, and order by DESC so the most recent generated is shown at the top
		users = User.all.order 'id DESC'
		render :json => { :users => users }
	end

	def create
		user = User.new user_params

		ascii_total = User.ascii_totaller user.first_name, user.last_name
		user.ascii_total = ascii_total

		binary_conversion = User.binary_converter ascii_total
		user.binary_conversion = binary_conversion

		consecutive_zeroes = User.consecutive_zeroes binary_conversion
		user.consecutive_zeroes = consecutive_zeroes

		user.save

		render :json => { :user => user }
	end

	def show
		user = User.find params[:id]
		render :json => { :user => user }
	end

	def destroy
		user = User.find params[:id]
		user.destroy
		users = User.all.order 'id DESC'
		render :json => { :user => user, :users => users }
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name)
	end
end