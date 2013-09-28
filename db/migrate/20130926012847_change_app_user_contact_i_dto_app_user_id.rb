class ChangeAppUserContactIDtoAppUserId < ActiveRecord::Migration
  def change
  	rename_column :contact_relationships, :app_user_contact_id, :app_user_id
  end
end
