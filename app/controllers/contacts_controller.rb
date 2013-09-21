class ContactsController < ApplicationController
	before_filter :user_check, only: [:save]

	def index
	end

	def callback
		@contacts = request.env['omnicontacts.contacts']
		@user = request.env['omnicontacts.user']
	end

	def save
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