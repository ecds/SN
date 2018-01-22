class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :rolenumber
      t.references :individual, index: true, foreign_key: true
      t.string :title
      t.decimal :certainty
      t.text :comments

      t.timestamps null: false
    end
  end
end
