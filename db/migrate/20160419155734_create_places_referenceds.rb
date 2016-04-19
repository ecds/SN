class CreatePlacesReferenceds < ActiveRecord::Migration
  def change
    create_table :places_referenceds do |t|
      t.references :place_referenced, references: :sites, index: true
      t.string :line_number
      t.string :type_of_reference
      t.references :referenced_by, references: :individuals, index: true
      t.references :previous_place, references: :sites, index: true
      t.references :next_place, references: :sites, index: true
      t.string :ritual
      t.string :ritual_deity

      t.timestamps null: false
    end
  end
end
