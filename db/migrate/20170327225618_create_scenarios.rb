class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.references :game, index: true, foreign_key: true
      t.string :title
      t.string :phone
      t.string :email
      t.text :concept
      t.text :address

      t.timestamps null: false
    end
  end
end
