class CreateBizcards < ActiveRecord::Migration[5.2]
  def change
    create_table :bizcards do |t|
      t.string :card_name
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
