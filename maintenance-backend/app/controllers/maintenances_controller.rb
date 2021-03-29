class MaintenancesController < ApplicationController

    def index
        maintenances = Maintenance.all
        render json: maintenances, include: [:items]
    end

    def create
        new_item = Maintenance.create(maintenance_params)
        render json: new_item
    end

    def update
        maintenance = Maintenance.find(params[:id])
        maintenance.update(maintenance_params)
        render json: maintenance
    end

    def delete
        maintenance = Maintenance.find_by(id: params[:id])
        maintenance.destroy
    end

    private

    def maintenance_params
        params.require(:maintenance).permit()
    end
end
