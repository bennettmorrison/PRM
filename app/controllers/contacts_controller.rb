class ContactsController < ApplicationController

	def index
	end

	def callback
		@app_user_id = current_app_user.id
		@contacts = request.env['omnicontacts.contacts']
		@contacts.each do |c|
			UserContact.create(name: c[:name], first_name: c[:first_name], last_name: c[:last_name], email: c[:email], app_user_id: current_app_user.id)
		end
	end

	def save
	end

end

  
