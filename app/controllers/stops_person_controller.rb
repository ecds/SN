class StopsPersonController < ApplicationController


  private

    def stops_person_params
      params.require(:stops_person).permit(:id, :crew_id, :ritual_person_id, :argonautica_person_id, :stop_id)
    end
end
