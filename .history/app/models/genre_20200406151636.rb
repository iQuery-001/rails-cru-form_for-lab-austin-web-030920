class Genre < ApplicationRecord
    has_many :genres
    has_many :song, through: :genres
end
