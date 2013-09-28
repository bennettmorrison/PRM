class CreateContactRelationships < ActiveRecord::Migration
  def change
    create_table :contact_relationships do |t|
      t.integer :relationship_purpose_id
      t.integer :user_contact_id
      t.string :rating
      t.string :not

      t.timestamps
    end
  end
end
