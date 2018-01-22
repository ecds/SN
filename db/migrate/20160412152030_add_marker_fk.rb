class AddMarkerFk < ActiveRecord::Migration
  def change
    change_table :markers do |t|
  t.remove :site
  t.string :site, index: true, foreign_key: true
  end
  end
end
