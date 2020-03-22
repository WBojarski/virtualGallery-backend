class UserSerializer < ActiveModel::Serializer

    attributes :username,:data


    def data
        {
            id: object.id,
            username: object.username,
            email: object.email,
            bio: object.bio,
            location: object.location
            collection: parse_collections(object.collections)
        }
    end

    def parse_collections(collections)
        parsed = collections.map do |collection|
            {
                id: collection.id,
                category: collection.category,
                art_pieces: collection.art_pieces
            }
        end
    end
end

