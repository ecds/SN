class PriesthoodsManyTo < ActiveRecord::Migration
  def change
    change_table :groupings do |t|
         t.belongs_to :priesthoods, index: true
         t.belongs_to :inscriptions, index: true

    end
  end
end
