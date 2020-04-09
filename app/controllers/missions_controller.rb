class MissionsController < ApplicationController
    before_action :set_mission, only: [:show, :edit, :update, :destroy]

    def index
        @missions = Mission.all
    end

    def show

    end

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.new(mission_params)

        if @mission.valid?
            @mission.save
            redirect_to scientist_path(@mission.scientist_id)
        else
            render "new"
        end
    end

    def edit

    end

    def update
        @mission.update(mission_params)
        redirect_to mission_path(@mission)
    end

    def destroy
        @mission.destroy
        redirect_to missions_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_mission
        @mission = Mission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end

end
