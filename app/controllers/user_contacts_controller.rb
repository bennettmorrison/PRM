class UserContactsController < ApplicationController

	def edit
		@c = UserContact.find(params[:id])
		@r = RelationshipPurpose.find(params[:relationship_purpose_id])
		@cr = ContactRelationship.new
		@cr.user_contact_id = @c
		@cr.relationship_purpose_id = @r
	end

end