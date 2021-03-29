class ItemsController < ApplicationController
    def index
        items = Item.all 
        render json: items, except: [:created_at, :updated_at]
    end

    def create
        new_item = Item.create(item_params)
        render json: new_item
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: item
    end

    def delete
        item = Item.find_by(id: params[:id])
        item.destroy
    end

    private

    def item_params
        params.require(:item).permit()
    end
end
