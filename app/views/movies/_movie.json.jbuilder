json.extract! movie, :id, :name, :release_date, :director, :synopsis, :classification_id, :artwork, :trailer, :duration, :created_at, :updated_at
json.url movie_url(movie, format: :json)
