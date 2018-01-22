class AddImage < ActiveRecord::Migration
  def up
    add_attachment :inscriptions, :picture
  end

  def down
    remove_attachment :inscriptions, :picture
  end
end
