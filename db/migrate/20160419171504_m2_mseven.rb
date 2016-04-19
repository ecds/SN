class M2Mseven < ActiveRecord::Migration
  def change
      change_table :stops_people do |t|
         t.references :ritual_person, references: :argonautica_people, index: true
     end 

  end
end
