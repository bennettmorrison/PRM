class ContactsController < ApplicationController


	def index
	end

	def callback
		@contacts = request.env['omnicontacts.contacts']
	end

end