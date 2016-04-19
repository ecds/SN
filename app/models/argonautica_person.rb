class ArgonauticaPerson < ActiveRecord::Base
  belongs_to :origin,  :class_name => 'Site', :foreign_key => 'origin_id'
  has_many :stops_people
end
