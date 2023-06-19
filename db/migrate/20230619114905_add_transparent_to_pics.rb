class AddTransparentToPics < ActiveRecord::Migration[7.0]
  def change
    add_column :pics, :transparent, :boolean
    add_column :pics, :fond, :string
  end
end
