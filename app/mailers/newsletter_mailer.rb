class NewsletterMailer < ActionMailer::Base
  
  def send_newsletter(banner_movie, movies=[], users=[])
  	client = Postmark::ApiClient.new(ENV['POSTMARK_TOKEN'])
  	users.uniq.each do |user|
	  	client.deliver_with_template({:from=>"info@watchmoviesfree.mobi", :to=>user, :template_id=>883121,
				 :template_model=> {
				 	subject: "Watch Free Online Movie, Download HD Movie, Fast Movie Stream Online",
				  banner_image: "http://watchmoviesfree.mobi/#{banner_movie.poster.url(:thumb)}",
				  movies_list_heading: "Watch Free Online Movie, Download HD Movie, Fast Movie Stream Online",
				  movies: movies.map{|m| {
				   		movie_link: "http://watchmoviesfree.mobi#{m.facebook_commenter_url}",
				      movie_src: "http://watchmoviesfree.mobi#{m.poster.url(:thumb)}",
				      movie_title: m.name,
				      movie_description: m.plot_summary } } }
				})
  	end
  end

end