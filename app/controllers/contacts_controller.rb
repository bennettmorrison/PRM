class ContactsController < ApplicationController
	before_filter :user_check, only: [:create]

	def index
	end

	def callback
		@contacts = request.env['omnicontacts.contacts']
	end

	def save
		@contacts = request.env['omnicontacts.contacts']
		@contacts.each do |c|
			contact = params.require(c[:name], :app_user_id).permit(c[:first_name], c[:last_name], c[:email])
			UserContact.create contact
		end
		redirect_to 'save'
	end

  def user_check
    if app_user_signed_in? == true
    	render 'save'
    else
      redirect_to '/app_users/sign_in'
      flash[:notice] = "You must be logged in to save contacts."
    end
  end



end

  
