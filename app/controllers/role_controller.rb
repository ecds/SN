class RoleController < ApplicationController

  private

    def role_params
      params.require(:site).permit(:rolenumber, :individual, :individual_id, :title, :certainty, :comments)

    end
end
