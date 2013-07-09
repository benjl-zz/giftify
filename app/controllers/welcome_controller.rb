class WelcomeController < ApplicationController
	
	before_filter :skip_splash

	def index
		
	end

	def skip_splash
		if current_user then redirect_to user_home_path end
	end

end
