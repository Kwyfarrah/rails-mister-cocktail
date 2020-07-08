class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :ip
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
