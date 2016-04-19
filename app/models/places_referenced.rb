class PlacesReferenced < ActiveRecord::Base
  belongs_to :place_referenced,  :class_name => 'Site', :foreign_key => 'place_referenced_id'
  belongs_to :previous_place,  :class_name => 'Site', :foreign_key => 'previous_place_id'
  belongs_to :next_place,  :class_name => 'Site', :foreign_key => 'next_place_id'
  belongs_to :referenced_by, :class_name => 'Individual', :foreign_key => 'referenced_by_id'

end
