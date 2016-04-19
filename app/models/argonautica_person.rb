class ArgonauticaPerson < ActiveRecord::Base
  belongs_to :origin,  :class_name => 'Site', :foreign_key => 'origin_id'
end
