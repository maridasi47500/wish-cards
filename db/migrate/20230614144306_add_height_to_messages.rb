class AddHeightToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :height, :integer
    add_column :messages, :width, :integer
    add_column :messages, :bodyx, :integer
    add_column :messages, :bodyy, :integer
  end
end
