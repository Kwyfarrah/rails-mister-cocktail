class AddVotingToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :voting, :integer, default:0
  end
end
