class InscriptionsSiteAddFix3 < ActiveRecord::Migration
  def change
      change_table :inscriptions do |t|
         t.references :find_spot, references: :sites, index: true
    end
  end
end
