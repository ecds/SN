class PlacesReferencedsController < InheritedResources::Base

  private

    def places_referenced_params
      params.require(:places_referenced).permit(:place_referenced, :place_referenced_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :referenced_by, :referenced_by_id, :line_number, :type_of_reference, :ritual, :ritual_deity)
    end
end

