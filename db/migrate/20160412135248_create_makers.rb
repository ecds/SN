class CreateMakers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :marker_id
      t.string :type
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
