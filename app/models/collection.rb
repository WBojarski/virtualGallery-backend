class Collection < ApplicationRecord
    belongs_to :user
    has_many :art_piece_collections, :dependent => :delete_all
    has_many :art_pieces, through: :art_piece_collections
    accepts_nested_attributes_for :art_pieces, :allow_destroy => true
end


