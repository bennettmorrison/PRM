class UserContact < ActiveRecord::Base

	belongs_to :app_user
	has_many :contact_relationships
  has_many :relationship_purposes, through: :contact_relationships
	
end