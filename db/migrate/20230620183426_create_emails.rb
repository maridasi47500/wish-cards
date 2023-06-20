class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :title
      t.string :email
      t.integer :message_id

      t.timestamps
    end
  end
end
