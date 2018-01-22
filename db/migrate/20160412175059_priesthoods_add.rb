class PriesthoodsAdd < ActiveRecord::Migration
  def change
    change_table :priesthoods do |t|
         t.remove :location_id
         
    end

  end
end
