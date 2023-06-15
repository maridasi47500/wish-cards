class AddXToTexts < ActiveRecord::Migration[7.0]
  def change
    add_column :texts, :x, :string
    add_column :texts, :y, :string
  end
end
