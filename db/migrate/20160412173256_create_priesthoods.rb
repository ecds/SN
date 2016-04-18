class CreatePriesthoods < ActiveRecord::Migration
  def change
    create_table :priesthoods do |t|
      t.string :identification
      t.string :name
      t.string :title
      t.string :deity_identification
      t.string :deity
      t.string :duration
      t.string :att_honor
      t.string :cer_ritual
      t.text :comments
      t.references :role, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
