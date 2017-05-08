class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  if Rails.env.production?
  	include ActionController::Caching::Pages
  	self.page_cache_directory = "#{Rails.root.to_s}/public/page_cache"
  end
end