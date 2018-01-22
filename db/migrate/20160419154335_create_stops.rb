class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.references :place_of_stop, references: :sites, index: true
      t.references :previous_place, references: :sites, index: true
      t.references :next_place, references: :sites, index: true
      t.string :type_of_stop
      t.string :line_number
      t.string :ritual
      t.string :ritual_deity

      t.timestamps null: false
    end
  end
end
