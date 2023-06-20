class AddMusicToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :music, :string
  end
end
