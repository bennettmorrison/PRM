class ChangeAppUserIdtoUserContactId < ActiveRecord::Migration
  def change
  	rename_column :contact_relationships, :app_user_id, :user_contact_id
  end
end
