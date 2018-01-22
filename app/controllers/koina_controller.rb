class KoinaController < ApplicationController

  private

    def koina_params
      params.require(:koina).permit(:site, :site_id, :inscription, :inscription_id, :membercount, :activities, :comments)
    end
end
