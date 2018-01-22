class MarkerController < ApplicationController

  private

    def marker_params
      params.require(:marker).permit(:marker_id, :type, :site)
    end
end
