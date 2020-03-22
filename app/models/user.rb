class User < ApplicationRecord
    has_many :collections
    has_many :art_pieces, through: :collections
    has_secure_password
    
end
