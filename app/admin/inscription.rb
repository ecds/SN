ActiveAdmin.register Inscription do
  permit_params :name, :find_spot, :find_spot_id, :picture, :picture_file_name, :picture_file_size, :picture_content_type, :picture_updated_at, :source, :Alt_Name, :start_date, :end_date, :date_info, :Inscription_text, :Bibliography, :Comments, :Dating_Certainty, :StartDate_CE, :EndDate_CE

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
 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Inscription Details" do
    f.input :name
    f.input :source
    f.input :Alt_Name
    f.input :start_date
    f.input :end_date
    f.input :date_info
    f.input :Inscription_text
    f.input :Bibliography
    f.input :Comments
    f.input :Dating_Certainty
    f.input :StartDate_CE
    f.input :EndDate_CE
    f.input :find_spot
    f.input :picture, :as => :file, :hint => f.template.image_tag(f.object.picture.url)
    end
    f.inputs 'Record data' do
      f.input :created_at
      f.input :updated_at
  end
  f.actions
 end
 
  show do |ad|
      attributes_table do
        row :name
        row :source
        row :Alt_Name
        row :start_date
        row :end_date
        row :date_info
        row :Inscription_text
        row :Bibliography
        row :Comments
        row :Dating_Certainty
        row :StartDate_CE
        row :EndDate_CE
        row :find_spot
        row :created_at
        row :updated_at
        row :picture do
          inscription.picture? ? image_tag(inscription.picture.url, height: '100') : content_tag(:span, "No photo yet")
        end
        # Will display the image on show object page
      end
      active_admin_comments
    end
    
end
