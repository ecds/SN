class PlacesReferenced < ActiveRecord::Base
  belongs_to :place_referenced,  :class_name => 'Site', :foreign_key => 'place_referenced_id'
  belongs_to :previous_place,  :class_name => 'Site', :foreign_key => 'previous_place_id'
  belongs_to :next_place,  :class_name => 'Site', :foreign_key => 'next_place_id'
  belongs_to :referenced_by, :class_name => 'Individual', :foreign_key => 'referenced_by_id'
  has_and_belongs_to_many :argonautica_people
  has_many :stops_people
  has_many :argonautica_people
  accepts_nested_attributes_for :stops_people, :allow_destroy => true
  accepts_nested_attributes_for :argonautica_people, :allow_destroy => true

end
