class User < ApplicationRecord
    has_many :collections
    has_secure_password
end
