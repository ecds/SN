ActiveAdmin.register Inscription do
  permit_params :name, :find_spot, :find_spot_id, :source, :Alt_Name, :start_date, :end_date, :date_info, :Inscription_text, :Bibliography, :Comments, :Dating_Certainty, :StartDate_CE, :EndDate_CE

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
