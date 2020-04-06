class Genre < ApplicationRecord
    has_many :artists
    has_many :song, through: :genres
end
