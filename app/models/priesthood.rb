class Priesthood < ActiveRecord::Base
    belongs_to :role
    has_and_belongs_to_many :inscriptions
    belongs_to :location,  :class_name => 'Site', :foreign_key => 'location_id'
    has_many :groupings
    has_many :inscriptions, through: :groupings
    accepts_nested_attributes_for :groupings, :allow_destroy => true
    accepts_nested_attributes_for :inscriptions, :allow_destroy => true
end
