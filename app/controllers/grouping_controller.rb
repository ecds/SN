class GroupingController < ApplicationController


  private

    def grouping_params
      params.require(:grouping).permit(:inscription_id, :priesthood_id, :inscriptions_id, :priesthoods_id)
    end

end
