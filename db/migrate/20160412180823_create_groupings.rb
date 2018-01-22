class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.references :inscription, index: true, foreign_key: true
      t.references :priesthood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
