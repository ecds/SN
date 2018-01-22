class AddMarkerFKid < ActiveRecord::Migration
  def change
    change_table :markers do |t|
       t.integer :site_id, index: true, foreign_key: true
       add_foreign_key :markers, :sites
  end

  end
end
