class HomeController < ApplicationController
	def index
		@user = current_user
		@pages = @user.pages
		respond_to do |format|
		    format.html
 		 end
	end
end
