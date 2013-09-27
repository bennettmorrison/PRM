class RelationshipPurpose < ActiveRecord::Base

	belongs_to :app_user
	has_many :contact_relationships
	has_many :user_contacts, through: :contact_relationships

end
