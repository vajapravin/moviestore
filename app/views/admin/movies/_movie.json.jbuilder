json.array! [movie] do |movie|
	json.select! movie, :id, :released_year, :movie_size
end