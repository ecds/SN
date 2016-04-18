class IndividualController < ApplicationController

  private

    def individual_params
      params.require(:individual).permit(:name, :patronym, :inscription, :inscription_id, :site, :site_id, :comments, :site_origin, :site_origin_id, :identification)
    end

end
