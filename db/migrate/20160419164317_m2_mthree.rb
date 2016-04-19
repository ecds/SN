class M2Mthree < ActiveRecord::Migration
  def change
      change_table :stops do |t|
         t.references :crew, references: :argonautica_people, index: true
         t.references :ritual_people, references: :argonautica_people, index: true
         t.references :stops_people, index: true
      end
  end
end
