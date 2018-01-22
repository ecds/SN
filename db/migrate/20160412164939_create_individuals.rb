class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :name
      t.string :patronym
      t.references :inscription, index: true, foreign_key: true
      t.text :comments

      t.timestamps null: false
    end
  end
end
