ActiveAdmin.register PlacesReferenced do
    permit_params :ritual_person_id, :ritual_person, :place_referenced, :place_referenced_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :referenced_by, :referenced_by_id, :line_number, :type_of_reference, :ritual, :ritual_deity, stops_people_attributes: [:id, :ritual_person_id, :argonautica_person_id, :places_referenced_id, :_destroy]
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
    f.inputs 'Place Referenced Data' do
      f.input :place_referenced
      f.input :previous_place
      f.input :next_place
      f.input :line_number
      f.input :referenced_by
      f.input :ritual
      f.input :ritual_deity
    end
    f.inputs 'Record data' do
      f.input :created_at
      f.input :updated_at
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
        row :place_referenced
        row :previous_place
        row :next_place
        row :referenced_by
        row :line_number
        row :ritual
        row :ritual_deity
        row :created_at
        row :updated_at
        end
     panel "Ritual People" do
      attributes_table_for places_referenced.stops_people do
        row :ritual_person

        end
       
      
      end
      active_admin_comments
    end

end
