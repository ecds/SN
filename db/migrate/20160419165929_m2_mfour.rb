class M2Mfour < ActiveRecord::Migration
  def change
      change_table :stops_people do |t|
         t.references :crew, references: :argonautica_people, index: true
         t.references :ritual_people, references: :argonautica_people, index: true
     end 

  end
end
