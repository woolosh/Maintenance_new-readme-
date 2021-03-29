class MaintenanceitemsController < ApplicationController
    
    
    def index
        all = Maintenanceitem.all
        render json: all
    end

    def create
        maintenance_item = Maintenanceitem.create(maintenance_item_params)
        render json: maintenance_item
    end

    def delete
        joiner = Maintenanceitem.find_by(id: params[:id])
        joiner.destroy 
    end

        private

    def maintenance_item_params
        params.require(:maintenance_item).permit(:item_id, :maintenance_id)
    end


end
