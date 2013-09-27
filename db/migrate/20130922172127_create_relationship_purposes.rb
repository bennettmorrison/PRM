class CreateRelationshipPurposes < ActiveRecord::Migration
  def change
    create_table :relationship_purposes do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.boolean :ongoing
      t.integer :app_user_id

      t.timestamps
    end
  end
end
