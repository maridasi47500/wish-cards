class AddFondToText < ActiveRecord::Migration[7.0]
  def change
    add_column :texts, :fond, :string
    add_column :texts, :transparent, :boolean
  end
end
