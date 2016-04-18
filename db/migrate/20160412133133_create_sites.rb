class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
            t.string :name
            t.string :mod_name
            t.string :alt_name
            t.decimal :latitude, :precision => 6, :scale => 4
            t.decimal :longitude, :precision => 6, :scale => 4
            t.float :elevation
            t.string :pleiades_url
            t.string :perseus_url
            t.string :caption
            t.text :paragraph
      t.timestamps null: false
    end
  end
end
