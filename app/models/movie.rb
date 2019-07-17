class Movie < ApplicationRecord
    belongs_to :classification
    has_many :genres_movies    
    has_many :genres, -> { order "genre ASC" }, :through => :genres_movies

    has_one_attached :artwork
end
