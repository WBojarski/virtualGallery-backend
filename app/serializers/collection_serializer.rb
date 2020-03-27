class CollectionSerializer < ActiveModel::Serializer
    attributes :data

    def data
        {
            id: object.id,
            category: object.category,
            art_pieces: object.art_pieces
        }

    end

end