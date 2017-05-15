require 'rake'

class MovieStoreJob < ApplicationJob
  queue_as :default

  def perform(*args)
    `RAILS_ENV=#{Rails.env} rake themoviedb:sync_popular`
  	`RAILS_ENV=#{Rails.env} rake themoviedb:sync_upcoming`
    `RAILS_ENV=#{Rails.env} rake dev:sync_openload`
    `RAILS_ENV=#{Rails.env} rake dev:home_slider`
    `RAILS_ENV=#{Rails.env} rake dev:facebook_commenter_url`
    `RAILS_ENV=#{Rails.env} rake dev:newsletter`
    `RAILS_ENV=#{Rails.env} rake dev:sync_imdb`
    `RAILS_ENV=#{Rails.env} rake dev:yts_existing`
    `RAILS_ENV=#{Rails.env} rake dev:yts_non_existing`
  end
end
