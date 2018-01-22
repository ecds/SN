class NameChange < ActiveRecord::Migration
  def change
  change_table :markers do |t|
      t.remove :marker_id, :type
      t.string :id_of_marker
      t.string :type_of_marker
    end
  end
end
