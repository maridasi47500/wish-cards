class CreateTextanimations < ActiveRecord::Migration[7.0]
  def change
    create_table :textanimations do |t|
      t.integer :text_id
      t.string :percent
      t.string :translatex
      t.string :translatey
      t.string :rotate
      t.string :color

      t.timestamps
    end
  end
end
