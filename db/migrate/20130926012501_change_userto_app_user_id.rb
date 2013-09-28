class ChangeUsertoAppUserId < ActiveRecord::Migration
  def change
  	rename_column :contact_relationships, :user_contact_id, :app_user_contact_id
  end
end
