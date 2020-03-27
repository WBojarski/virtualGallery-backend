class ArtPiece < ApplicationRecord
    require 'rest-client'
    require 'json'
    has_many :art_piece_collections, :dependent => :delete_all
    has_many :collections, through: :art_piece_collections


        
    
end

