class SiteFkIndiv < ActiveRecord::Migration
  def change
      add_reference :individuals, :site, index: true   # foreign_key: true <= remove this!
      add_reference :individuals, :site_origin, index: true  # foreign_key: true <= remove this!

      add_foreign_key :individuals, :sites, column: :site_id
      add_foreign_key :individuals, :sites, column: :site_origin_id
  end
end
