ActiveAdmin.register Individual do
    permit_params :name, :patronym, :inscription, :inscription_id, :site, :site_id, :comments, :site_origin, :site_origin_id, :identification
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
