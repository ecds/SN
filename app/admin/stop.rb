ActiveAdmin.register Stop do
    permit_params :ritual_person_id, :ritual_person, :crew_id, :crew, :stops_people_id, :stops_people, :place_of_stop, :place_of_stop_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :type_of_stop, :line_number, :ritual, :ritual_deity, stops_people_attributes: [:id, :crew_id, :ritual_person_id, :argonautica_person_id, :stop_id, :_destroy]
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


     form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Stop Data' do
      f.input :place_of_stop
      f.input :previous_place
      f.input :next_place
      f.input :type_of_stop
      f.input :line_number
      f.input :ritual
      f.input :ritual_deity
    end
    f.inputs 'Record data' do
      f.input :created_at
      f.input :updated_at
    end
     f.inputs 'Crew' do
        f.has_many :stops_people, heading: 'Related Crew', allow_destroy: true, new_record: true do |df|
          df.input :crew
        end
     end
     f.inputs 'Ritual People' do
        f.has_many :stops_people, heading: 'Related People to Rituals', allow_destroy: true, new_record: true do |df|
          df.input :ritual_person
        end
     end
     f.actions
     end

  show do 
      attributes_table do
        row :place_of_stop
        row :previous_place
        row :next_place
        row :type_of_stop
        row :line_number
        row :ritual
        row :ritual_deity
        row :created_at
        row :updated_at
        end
    panel "Crew" do
      attributes_table_for stop.stops_people do
        row :crew

        end
    end
     panel "Ritual People" do
      attributes_table_for stop.stops_people do
        row :ritual_person

        end
       
      
      end
      active_admin_comments
    end

end
