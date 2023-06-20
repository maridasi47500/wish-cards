class AddDurationanimToPics < ActiveRecord::Migration[7.0]
  def change
    add_column :pics, :duration, :integer
    add_column :texts, :duration, :integer
    add_column :pics, :delay, :integer
    add_column :texts, :delay, :integer
  end
end
