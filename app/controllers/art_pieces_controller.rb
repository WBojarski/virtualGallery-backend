class ArtPiecesController < ApplicationController

    def index
        art_pieces = ArtPiece.all
        render json: art_pieces
    end

    def new

    end

    def create
        art_piece = Art_piece.create(art_piece_params)
        render json:art_piece
    end

    def delete

    end

    private

    def art_piece_params

        params.require(:art_piece).permit(:title, :objectID, :isHighlight, :primaryImage, :primaryImageSmall, :department, :culture, :artistDisplayName, :artistDisplayBio, :artistAlphaSort, :artistNationality, :artistWikidata_URL, :objectBeginDate, :objectEndDate, :medium, :dimensions, :city, :state, :country, :classification, :repository, :objectURL)    
    end
end

