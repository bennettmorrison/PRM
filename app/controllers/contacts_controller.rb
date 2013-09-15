class ContactsController < ApplicationController


	def index
	end

	def callback
		@googlecontacts = GoogleContact.get
	end

end