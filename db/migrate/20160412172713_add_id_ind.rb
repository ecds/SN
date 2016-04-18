class AddIdInd < ActiveRecord::Migration
  def change
    change_table :individuals do |t|
         t.string :identification
    end
  end
end
