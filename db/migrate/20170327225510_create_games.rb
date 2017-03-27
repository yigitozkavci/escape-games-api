class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :img
      t.string :url
      t.string :name

      t.timestamps null: false
    end
  end
end
