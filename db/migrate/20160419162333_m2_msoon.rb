class M2Msoon < ActiveRecord::Migration
  def change
      create_table :stops_people do |t|
         t.belongs_to :argonautica_people, index: true
         t.belongs_to :stops, index: true
      end
  end
end
