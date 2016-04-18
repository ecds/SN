class DropMarkerStartOver < ActiveRecord::Migration
  def change
      drop_table :markers
  end
end
