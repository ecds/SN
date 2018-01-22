class PriesthoodsLoc < ActiveRecord::Migration
  def change
      add_reference :priesthoods, :location, references: :sites
  end
end
