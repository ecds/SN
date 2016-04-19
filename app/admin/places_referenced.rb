ActiveAdmin.register PlacesReferenced do
    permit_params :place_referenced, :place_referenced_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :referenced_by, :referenced_by_id, :line_number, :type_of_reference, :ritual, :ritual_deity
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


end
