ActiveAdmin.register Site do
    permit_params :name, :mod_name, :alt_name, :latitude, :longitude, :elevation, :pleiades_url, :perseus_url, :caption, :paragraph
    
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
