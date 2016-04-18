class PriesthoodsManyToManyShow < ActiveRecord::Migration
  def change

    change_table :priesthoods do |t|
         t.references :groupings, index: true
    end


  end
end
