class CollectionsController < ApplicationController

    def index
        collections = Collection.all

        render json: collections
    end

    def new 

    end

    def create
        collection = Collection.create(collection_params)
        render json: collection
    end


    def delete

    end

    private

    def collection_params
        params.require(:collection).permit(:category, :user_id)
    end
end
