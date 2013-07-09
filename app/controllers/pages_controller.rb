class PagesController < ApplicationController

	def new

	end

	def create
 		@page = Page.new(params[:page])
 		@page.user_id = current_user.id
 
		respond_to do |format|
			if @page.save
		  		format.html  { redirect_to(user_home_path, :notice => 'Page was successfully created.') }
		    else
		      format.html  { render :action => "new" }
		    end
  		end
	end

	def destroy
	    if params.include?(:id) 
			@page = Page.find params[:id]
		else
			@page = Page.find_by_name params[:name]
		end

		@page.destroy

	    respond_to do |format|
	      format.html { redirect_to user_home_path, notice: "Page has been deleted." }
	    end
  	end

	def show		
		if params.include?(:id) 
			@page = Page.find_by_name params[:id]
		else
			@page = Page.find_by_name params[:name]
		end
		respond_to do |format|
	      format.html
	    end
	end

	def edit
		@page = Page.find_by_name params[:name]
	end

end
