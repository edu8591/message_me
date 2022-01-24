class ApplicationController < ActionController::Base
	helper_method :current_user, :logged_in?

	def current_user
		#returns the id of the current user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		#will chec if we have a logged in user
		!!current_user
	end

	def require_user
		if !logged_in?
			flash[:error] = 'You must be logged in to perform that action'
			redirect_to login_path
		end
	end
end
