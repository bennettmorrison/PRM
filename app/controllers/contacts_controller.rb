class ContactsController < ApplicationController


	def index
	end

	def callback
		@contacts = request.env['omnicontacts.contacts']
		respond_to do |format|
			format.html 
		end
	end

end