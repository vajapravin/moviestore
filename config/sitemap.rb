# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.watchmovies.co.in"
SitemapGenerator::Sitemap.create_index = true
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.create do
  add '/users/sign_in'
  add '/movie/upcoming'
  add '/movie/recent'
  add '/movie/categories'
  add '/movie/featured'
  add '/movie/news'
  add '/movie/more'
  Movie.find_each do |movie|
    add "/movie/#{movie.imdbid}/#{movie.name}", :lastmod => movie.updated_at
    add "/movie/#{movie.imdbid}/#{movie.name}/watch/online", :lastmod => movie.updated_at
    add "/movie/#{movie.imdbid}/#{movie.name}/free/download", :lastmod => movie.updated_at
  end
end