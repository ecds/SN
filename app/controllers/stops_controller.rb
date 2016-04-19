class StopsController < InheritedResources::Base

  private

    def stop_params
      params.require(:stop).permit(:place_of_stop, :place_of_stop_id, :previous_place, :previous_place_id, :next_place, :next_place_id, :type_of_stop, :line_number, :ritual, :ritual_deity)
    end
end

