class Changecocktails < ActiveRecord::Migration[6.0]
  def up
    change_column :cocktails, :image_url, :text, :default => nil
  end
end
