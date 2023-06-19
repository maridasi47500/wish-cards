class AddZindexToPics < ActiveRecord::Migration[7.0]
  def change
    add_column :pics, :zindex, :integer
    add_column :texts, :zindex, :integer
  end
end
