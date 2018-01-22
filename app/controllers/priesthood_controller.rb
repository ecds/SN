class PriesthoodController < ApplicationController
  def index
      @priesthoods = Priesthood.all
  end
  def show
      @priesthood = Priesthood.find(params[:priesthood_id])
      @inscriptions = @priesthood.inscriptions
  end
  private

    def priesthood_params
      params.require(:priesthood).permit(:id, :identification, :name, :title, :inscription, :inscription_id, :priesthood_id, :location, :location_id, :deity_identification, :deity, :duration, :att_honor, :cer_ritual, :comments, :role, :role_id, groupings_attributes: [:id, :inscription_id, :priesthood_id, :created_at, :updated_at, :inscriptions_id, :priesthoods_id, :_destroy])
    end

end
