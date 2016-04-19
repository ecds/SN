class ArgonauticaPeopleFix < ActiveRecord::Migration
  def change
        add_reference :argonautica_people, :origin, references: :sites
  end
end
