class CreatePicanimations < ActiveRecord::Migration[7.0]
  def change
    create_table :picanimations do |t|
      t.integer :pic_id
      t.string :percent
      t.string :translatex
      t.string :translatey
      t.string :rotate
      t.string :color

      t.timestamps
    end
  end
end
