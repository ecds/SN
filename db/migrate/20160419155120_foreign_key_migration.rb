class ForeignKeyMigration < ActiveRecord::Migration
  def change
      add_foreign_key :stops, :sites, column: :place_of_stop_id
      add_foreign_key :stops, :sites, column: :previous_place_id
      add_foreign_key :stops, :sites, column: :next_place_id
      add_foreign_key :argonautica_people, :sites, column: :origin_id      
  end
end
