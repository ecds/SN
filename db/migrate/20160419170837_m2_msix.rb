class M2Msix < ActiveRecord::Migration
  def change
      change_table :stops_people do |t|
         t.belongs_to :argonautica_person, index: true
         t.belongs_to :stop, index: true
      end

  end
end
