class RelationshipPurposesController < ApplicationController

	def index
		@relationships = RelationshipPurpose.where(:app_user_id => current_app_user.id)	
	end

	def edit
		@relationship = RelationshipPurpose.find(params[:id])
	end

	def new
		@relationship = RelationshipPurpose.new
	end

	def create
		@relationship = RelationshipPurpose.new (relationship_params)
    @relationship.app_user_id = current_app_user.id
    if @relationship.save
      redirect_to relationship_purposes_path
    else
      render 'new'
    end
	end

	def show
		@relationship = RelationshipPurpose.find(params[:id])
		# @contactrelationship = ContactRelationship.where(:relationship_purpose_id => @relationship)
		@contactrelationship = @relationship.user_contacts
		@contacts = UserContact.where(:app_user_id => current_app_user.id)
	end

	def update
		@relationship = RelationshipPurpose.find(params[:id])
    if @relationship.update_attributes(relationship_params)
      redirect_to relationship_purposes_path
    else
      render 'edit'
    end
	end

	def add
		@contact = UserContact.find(params[:id])
	end

	private

	def relationship_params
		params.require(:relationship_purpose).permit(:name, :description, :priority, :ongoing)
	end

end