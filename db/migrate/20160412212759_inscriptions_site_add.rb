class InscriptionsSiteAdd < ActiveRecord::Migration
  def change
    change_table :inscriptions do |t|
         t.references :find_spot, :location, references: :sites, index: true
    end
  end
end
