class CreateBizcards < ActiveRecord::Migration[5.2]
  def change
    create_table :bizcards do |t|
      t.string :card_name
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :line4
      t.string :line5

      t.timestamps
    end
  end
end
