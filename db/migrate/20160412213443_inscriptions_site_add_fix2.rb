class InscriptionsSiteAddFix2 < ActiveRecord::Migration
  def change
      change_table :inscriptions do |t|
         t.remove :find_spot_id
    end
  end
end
