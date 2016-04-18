class InscriptionsSiteAddFix < ActiveRecord::Migration
  def change
      change_table :inscriptions do |t|
         t.remove :location_id
    end
  end
end
