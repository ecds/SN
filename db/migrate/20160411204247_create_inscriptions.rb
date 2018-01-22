class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
            t.string :name
            t.string :source
            t.string :Alt_Name
            t.string :start_date
            t.string :end_date
            t.string :date_info
            t.text :Inscription_text
            t.text :Bibliography
            t.text :Comments
            t.text :Dating_Certainty
            t.float :StartDate_CE
            t.float :EndDate_CE
      t.timestamps null: false
    end
  end
end
