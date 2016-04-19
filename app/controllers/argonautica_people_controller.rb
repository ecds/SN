class ArgonauticaPeopleController < InheritedResources::Base

  private

    def argonautica_person_params
      params.require(:argonautica_person).permit(:name, :origin_id, :origin, :tribe, :created_at, :updated_at)
    end
end

