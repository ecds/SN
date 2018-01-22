class PriestMany < ActiveRecord::Migration
  def change
      add_reference :priesthoods, :location, index: true   # foreign_key: true <= remove this!

      add_foreign_key :priesthoods, :sites, column: :location_id

  end

  def self.up
    create_table :priesthoods_inscriptions, :id => false do |t|
      t.integer :priesthood_id
      t.integer :inscription_id
    end

    add_index :priesthoods_inscriptions, [:priesthood_id, :inscription_id]
  end

  def self.down
    drop_table :priesthoods_inscriptions
  end
end
