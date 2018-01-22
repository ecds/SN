class ArgonauticaPerson < ActiveRecord::Base
  belongs_to :origin,  :class_name => 'Site', :foreign_key => 'origin_id'
  has_many :stops_people
  has_and_belongs_to_many :places_referenceds
end
