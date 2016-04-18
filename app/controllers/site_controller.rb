class SiteController < ApplicationController

  private

    def site_params
      params.require(:site).permit(:name, :mod_name, :alt_name, :latitude, :longitude, :elevation, :pleiades_url, :perseus_url, :caption, :paragraph)
    end

end
