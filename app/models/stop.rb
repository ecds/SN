class Stop < ActiveRecord::Base
  belongs_to :place_of_stop,  :class_name => 'Site', :foreign_key => 'place_of_stop_id'
  belongs_to :previous_place,  :class_name => 'Site', :foreign_key => 'previous_place_id'
  belongs_to :next_place,  :class_name => 'Site', :foreign_key => 'next_place_id'
end
