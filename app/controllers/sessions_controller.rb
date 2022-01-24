class SessionsController < ApplicationController
	def new; end

	def create
		user = User.find_by(useraname: params[:session][:username].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user
		else
			render new
		end
	end

	private

	def sessions_params
		params.require(:session).permit(:username, :password)
	end
end
