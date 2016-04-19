ActiveAdmin.register Stop do
    permit_params :place_of_stop, :place_of_stop_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :type_of_stop, :line_number, :ritual, :ritual_deity
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
