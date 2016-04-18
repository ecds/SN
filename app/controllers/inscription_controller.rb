class InscriptionController < InheritedResources::Base

  private

    def inscription_params
      params.require(:inscription).permit(:name, :find_spot, :find_spot_id, :source, :Alt_Name, :start_date, :end_date, :date_info, :Inscription_text, :Bibliography, :Comments, :Dating_Certainty, :StartDate_CE, :EndDate_CE)
    end
end
