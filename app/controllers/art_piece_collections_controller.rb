class ArtPieceCollectionsController < ApplicationController
    def create
        art_piece_collection = ArtPieceCollection.create(artpiececollection_params)
        render json: art_piece_collection

    end

    private
    def artpiececollection_params
        params.require(:art_piece_collection).permit(:art_piece_id,:collection_id)
    end
end
