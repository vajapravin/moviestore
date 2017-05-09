require 'rake'

class MovieStoreWorker
  include Sidekiq::Worker
  sidekiq_options retry: 5

  def perform(*args)
  	`RAILS_ENV=#{Rails.env} rake dev:sync_openload`
  	`RAILS_ENV=#{Rails.env} rake dev:home_slider`
  	`RAILS_ENV=#{Rails.env} rake dev:facebook_commenter_url`
  	`RAILS_ENV=#{Rails.env} rake dev:newsletter`
  	`RAILS_ENV=#{Rails.env} rake dev:sync_imdb`
  	`RAILS_ENV=#{Rails.env} rake dev:yts_existing`
  	`RAILS_ENV=#{Rails.env} rake dev:yts_non_existing`
  end
end
