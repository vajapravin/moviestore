module Common
	def googl long_url, user_ip
		Googl.shorten(long_url, user_ip, ENV['GOOGLE_API_KEY']).short_url rescue long_url
	end
end