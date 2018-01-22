class CreateArgonauticaPeople < ActiveRecord::Migration
  def change
    create_table :argonautica_people do |t|
      t.string :name
      t.references :origin, references: :sites, index: true
      t.string :tribe

      t.timestamps null: false
    end
  end
end
