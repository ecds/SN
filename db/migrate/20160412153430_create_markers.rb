class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :marker_name
      t.string :marker_kind
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
