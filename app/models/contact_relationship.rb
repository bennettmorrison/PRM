class ContactRelationship < ActiveRecord::Base

	belongs_to :user_contact
	belongs_to :relationship_purpose

end
