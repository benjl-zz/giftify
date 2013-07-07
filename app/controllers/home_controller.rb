class HomeController < ApplicationController
	def index
		@user = current_user
		@pages = @user.pages
		respond_to do |format|
		    format.html  # index.html.erb
		    format.json  { render :json => @posts }
 		 end
	end
end
