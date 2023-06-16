class CreatePics < ActiveRecord::Migration[7.0]
  def change
    create_table :pics do |t|
      t.integer :message_id
      t.string :filename
      t.string :x
      t.string :y
      t.string :width
      t.string :height

      t.timestamps
    end
  end
end
