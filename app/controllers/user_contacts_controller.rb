class UserContactsController < ApplicationController

	def create

		# c = UserContact.find(params[:id])
		r = RelationshipPurpose.find(params[:relationship_purpose_id])
		cr = ContactRelationship.create(relationship_purpose_id: params[:relationship_purpose_id], user_contact_id: params[:id])
		if cr.save
			redirect_to relationship_purpose_path(r)
			flash[:notice] = "Success."
		else
			redirect_to relationship_purpose_path(r)
			flash[:notice] = "Problems."
		end
	end

end