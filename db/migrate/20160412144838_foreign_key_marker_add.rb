class ForeignKeyMarkerAdd < ActiveRecord::Migration
  def change
      add_column :markers, :site_ref, :string, foreign_key: true
      add_reference :markers, :site, index: true
  end
end
