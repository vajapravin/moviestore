json.set! :draw, params['draw']
json.set! :recordsTotal, 300
json.set! :recordsFiltered, 10
json.data do
	json.array! @movies.map{|m| ["<img src=\"#{m.cover_photo('670x266')}\" alt=\"Large cover\" width=\"60\" height=\"60\"> #{m.name}", m.released_year, m.movie_size, "<a href='/admin/movies/#{m.id}/edit' class='mdl-button mdl-js-button mdl-js-ripple-effect'>Sync</a>"]}
end