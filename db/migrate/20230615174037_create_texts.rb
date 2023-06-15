class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.integer :message_id
      t.text :content
      t.string :size
      t.string :color
      t.integer :weight

      t.timestamps
    end
  end
end
