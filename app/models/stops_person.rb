class StopsPerson < ActiveRecord::Base
    belongs_to :argonautica_person
    belongs_to :stop
    belongs_to :crew,  :class_name => 'ArgonauticaPerson', :foreign_key => 'crew_id'
    belongs_to :ritual_person,  :class_name => 'ArgonauticaPerson', :foreign_key => 'ritual_person_id'
end
