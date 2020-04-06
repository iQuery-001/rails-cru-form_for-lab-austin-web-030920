class Genre < ApplicationRecord
    has_many :genres
    has_many :genres, through: :songs
end
