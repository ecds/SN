class CreateStopsPeople < ActiveRecord::Migration
  def change
    create_table :stops_people do |t|

      t.timestamps null: false
    end
  end
end
