class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :collection_name
      t.integer :user_id
      t.integer :bizcard_id

      t.timestamps
    end
  end
end
