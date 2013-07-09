class ApplicationController < ActionController::Base
	protect_from_forgery

	def after_sign_in_path_for(user)
		user_home_path
	end

	def after_update_path_for(user)
		user_home_path
	end

end
