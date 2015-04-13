class ContactSubmittedController < ApplicationController
	def show
		@last_name=params['last_name']
		@first_name=params['first_name']
		render "show"
	end

end