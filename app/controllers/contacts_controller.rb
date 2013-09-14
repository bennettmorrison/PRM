class ContactsController < ApplicationController


	def index
	end

	def callback
		@googlecontacts = GoogleContact.all
	end

end