class PagesController < ApplicationController

	def index
		@tickets = Ticket.all
	end


	def getAllUsers

		@users = User.order(:id).all

		respond_to do |format|
			format.html
			format.xml { render :xml => @users }
		end

	end

end
