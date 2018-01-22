ActiveAdmin.register Priesthood do
    permit_params :identification, :name, :title, :inscription, :inscription_id, :priesthood_id, :location, :location_id, :deity_identification, :deity, :duration, :att_honor, :cer_ritual, :comments, :role, :role_id, groupings_attributes: [:id, :inscription_id, :priesthood_id, :created_at, :updated_at, :inscriptions_id, :priesthoods_id, :_destroy]
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
    f.inputs 'Priesthood Data' do
      f.input :identification
      f.input :name
      f.input :title
      f.input :deity_identification
      f.input :deity
      f.input :duration
      f.input :att_honor
      f.input :cer_ritual
      f.input :comments
      f.input :role
      f.input :location
    end
    f.inputs 'Record data' do
      f.input :created_at
      f.input :updated_at
    end
     f.inputs 'Inscriptions' do
        f.has_many :groupings, heading: 'Related Inscriptions', allow_destroy: true, new_record: true do |df|
          df.input :inscription
        end
     end
     f.actions
     end

  show do 
      attributes_table do
        row :identification
        row :name
        row :title
        row :deity_identification
        row :deity
        row :duration
        row :att_honor
        row :cer_ritual
        row :comments
        row :role
        row :location
        row :created_at
        row :updated_at
        end
    panel "Inscriptions" do
      attributes_table_for priesthood.groupings do
        row :inscription_id

        end
        
      
      end
      active_admin_comments
    end

end
