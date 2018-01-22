class InscriptionController < InheritedResources::Base

def create
  @inscription = Inscription.create( user_params )
end


  private

    def inscription_params
      params.require(:inscription).permit(:name, :find_spot, :find_spot_id, :picture, :picture_file_name, :picture_file_size, :picture_content_type, :picture_updated_at, :source, :Alt_Name, :start_date, :end_date, :date_info, :Inscription_text, :Bibliography, :Comments, :Dating_Certainty, :StartDate_CE, :EndDate_CE)
    end
    
    
end
