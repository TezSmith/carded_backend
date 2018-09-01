class CreateBizcards < ActiveRecord::Migration[5.2]
  def change
    create_table :bizcards do |t|
      t.string :card_name
      t.text :line1
      t.text :line2
      t.text :line3
      t.text :line4
      t.text :line5
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
