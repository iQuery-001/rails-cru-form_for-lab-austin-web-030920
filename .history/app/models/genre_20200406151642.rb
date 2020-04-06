class Genre < ApplicationRecord
    has_many :artist
    has_many :song, through: :genres
end
