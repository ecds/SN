class ForeignKeyMarkerAddAgain < ActiveRecord::Migration
  def change
      add_foreign_key :markers, :sites
  end
end
