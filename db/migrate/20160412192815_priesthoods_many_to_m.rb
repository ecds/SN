class PriesthoodsManyToM < ActiveRecord::Migration
  def change
    change_table :priesthoods do |t|
         t.references :inscription, index: true
    end
  end
end
