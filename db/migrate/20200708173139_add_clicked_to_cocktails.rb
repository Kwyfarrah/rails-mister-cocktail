class AddClickedToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :clicked, :integer, default: 0
  end
end
