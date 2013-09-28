class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
      t.string :email
      t.string :name
      t.string :first_name
      t.string :last_name
      t.integer :app_user_id

      t.timestamps
    end
  end
end
