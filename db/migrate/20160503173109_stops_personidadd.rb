class StopsPersonidadd < ActiveRecord::Migration
  def change
      change_table :stops_people do |t|
         t.references :places_referenced, references: :places_referenceds, index: true
     end 

  end
end
