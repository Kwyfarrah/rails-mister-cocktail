class Changecocktails < ActiveRecord::Migration[6.0]
  def up
    change_column :cocktails, :image_url, :text, :default => 'https://www.rakumachi.jp/images/frontend/smartphone/nophoto_thumbnail.png'
  end
end
