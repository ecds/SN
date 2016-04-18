class CreateKoinas < ActiveRecord::Migration
  def change
    create_table :koinas do |t|
      t.references :site, index: true, foreign_key: true
      t.references :inscription, index: true, foreign_key: true
      t.integer :membercount
      t.string :activities
      t.text :comments

      t.timestamps null: false
    end
  end
end
