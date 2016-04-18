class ForeignKeyMarker < ActiveRecord::Migration
  def change
  remove_foreign_key :markers, :site

  end
end
